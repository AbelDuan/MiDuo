.class public final Ldev/duo/taskcore/WorkspaceShell;
.super Ljava/lang/Object;
.source "WorkspaceShell.java"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceSession$Platform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/WorkspaceShell$GroupMotion;,
        Ldev/duo/taskcore/WorkspaceShell$Events;,
        Ldev/duo/taskcore/WorkspaceShell$Pending;,
        Ldev/duo/taskcore/WorkspaceShell$Play;,
        Ldev/duo/taskcore/WorkspaceShell$SourceSend;
    }
.end annotation


# static fields
.field private static final HOST_READY_MS:J = 0xbb8L

.field private static final MODE_FULLSCREEN:I = 0x1

.field private static final MODE_MULTI_WINDOW:I = 0x6

.field private static final OVERLAY_TASK_LAYER:I = 0x384

.field static final TAG:Ljava/lang/String; = "TaskCoreShell"

.field private static final TRANSITION_MS:J = 0x1388L

.field private static final TRANSIT_CHANGE:I = 0x6

.field private static final TYPE_STANDARD:I = 0x1


# instance fields
.field private volatile activeEpoch:J

.field private addListenerForTaskId:Ljava/lang/reflect/Method;

.field private volatile adoptDelivered:Z

.field private volatile adoptTask:I

.field private volatile awaitedCookie:Landroid/os/IBinder;

.field private volatile awaitedTask:I

.field private buildingGroup:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

.field private cfgWindow:Ljava/lang/reflect/Field;

.field private changeLeash:Ljava/lang/reflect/Method;

.field private changeTask:Ljava/lang/reflect/Method;

.field private final claims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile context:Landroid/content/Context;

.field private volatile displayArea:Landroid/view/SurfaceControl;

.field private events:Ldev/duo/taskcore/WorkspaceShell$Events;

.field private finishCallback:Ljava/lang/reflect/Method;

.field private final finishTs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile focusedMain:Ldev/duo/taskcore/TaskBinding;

.field private volatile gate:Ldev/duo/taskcore/SystemGate;

.field private geometry:Ldev/duo/taskcore/Geometry;

.field private getPendingInfo:Ljava/lang/reflect/Method;

.field private getRunningTaskInfo:Ljava/lang/reflect/Method;

.field private getTaskLeash:Ljava/lang/reflect/Method;

.field private getTaskListener:Ljava/lang/reflect/Method;

.field private groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

.field private final handledSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private handlerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private handlerProxy:Ljava/lang/Object;

.field private final hiddenUntilAttached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ldev/duo/taskcore/WorkspaceHost;

.field private imageEpoch:J

.field private imageFrame:J

.field private imageHandler:Landroid/os/Handler;

.field private imageThread:Landroid/os/HandlerThread;

.field private infoActivityType:Ljava/lang/reflect/Method;

.field private infoChanges:Ljava/lang/reflect/Method;

.field private infoDisplay:Ljava/lang/reflect/Field;

.field private infoKeyguardGoingAway:Ljava/lang/reflect/Method;

.field private infoMode:Ljava/lang/reflect/Method;

.field private infoParent:Ljava/lang/reflect/Field;

.field private infoPosition:Ljava/lang/reflect/Field;

.field private infoToken:Ljava/lang/reflect/Field;

.field private infoUser:Ljava/lang/reflect/Field;

.field private keyguardExit:Landroid/os/IBinder;

.field private launchCookies:Ljava/lang/reflect/Field;

.field private launcherProxyField:Ljava/lang/reflect/Field;

.field private volatile launcherService:Ljava/lang/Object;

.field private volatile launching:Landroid/os/IBinder;

.field private listenerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final live:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final loader:Ljava/lang/ClassLoader;

.field private final main:Landroid/os/Handler;

.field private mainExecutor:Ljava/lang/reflect/Field;

.field private final mergedInto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private nativePipState:Ljava/lang/Object;

.field private observerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private observerProxy:Ljava/lang/Object;

.field private oneShotConsumed:Ljava/lang/reflect/Method;

.field private oneShotMerge:Ljava/lang/reflect/Method;

.field private oneShotNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private oneShotStart:Ljava/lang/reflect/Method;

.field private oneShotToken:Ljava/lang/reflect/Field;

.field private volatile organizer:Ljava/lang/Object;

.field private final overlayClaims:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final overlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final owned:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ldev/duo/taskcore/WorkspaceShell$Pending;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field private prepareOpenAnimation:Ljava/lang/reflect/Method;

.field private volatile recents:Ljava/lang/Object;

.field private recentsChanged:Ljava/lang/reflect/Method;

.field private volatile recentsGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recentsRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteRestores:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceShell$Pending;",
            ">;"
        }
    .end annotation
.end field

.field private removeListener:Ljava/lang/reflect/Method;

.field private reqTrigger:Ljava/lang/reflect/Method;

.field private requestResultNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final sendingSource:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ldev/duo/taskcore/WorkspaceShell$SourceSend;",
            ">;"
        }
    .end annotation
.end field

.field private server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

.field private setListener:Ljava/lang/reflect/Method;

.field private volatile shell:Landroid/os/Handler;

.field private startTransition:Ljava/lang/reflect/Method;

.field private taskConfig:Ljava/lang/reflect/Field;

.field private taskListeners:Ljava/lang/reflect/Field;

.field private volatile taskViewTransitions:Ljava/lang/Object;

.field private tokenAsBinder:Ljava/lang/reflect/Method;

.field private tokenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile transitions:Ljava/lang/Object;

.field private tvClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private tvNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private tvRelease:Ljava/lang/reflect/Method;

.field private tvcClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private tvcNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private tvcSurface:Ljava/lang/reflect/Field;

.field private unregisterTaskView:Ljava/lang/reflect/Method;

.field private wcBounds:Ljava/lang/reflect/Method;

.field private wctBack:Ljava/lang/reflect/Method;

.field private wctBounds:Ljava/lang/reflect/Method;

.field private wctClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private wctFocusable:Ljava/lang/reflect/Method;

.field private wctHidden:Ljava/lang/reflect/Method;

.field private wctMode:Ljava/lang/reflect/Method;

.field private wctNew:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private wctReorder:Ljava/lang/reflect/Method;

.field private wctTrim:Ljava/lang/reflect/Method;

.field private final xposed:Lio/github/libxposed/api/XposedInterface;


# direct methods
.method public static synthetic $r8$lambda$9BEAzyIq8EI4x0d6cg7FeDPB8bM(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->onSourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q8fKJV8msvcCqDSUtBKaZV2HmSk(Ldev/duo/taskcore/WorkspaceShell;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->clearRecentsGroupNow()V

    return-void
.end method

.method public constructor <init>(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V
    .locals 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->handledSources:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pipSources:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pending:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->finishTs:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->mergedInto:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    .line 1039
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    .line 1756
    iput v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    .line 196
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    .line 197
    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    .line 198
    return-void
.end method

.method static synthetic access$000(Ldev/duo/taskcore/WorkspaceShell;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageEpoch:J

    return-wide v0
.end method

.method static synthetic access$100(Ldev/duo/taskcore/WorkspaceShell;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageFrame:J

    return-wide v0
.end method

.method static synthetic access$200(Ldev/duo/taskcore/WorkspaceShell;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceShell;->recents:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Ldev/duo/taskcore/WorkspaceShell;)Ljava/lang/reflect/Method;
    .locals 0

    .line 30
    iget-object p0, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsChanged:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static bundleTaskIds(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1747
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1748
    if-nez p0, :cond_0

    return-object v0

    .line 1749
    :cond_0
    const-string v1, "multiple_launch_taskIds"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1750
    instance-of v1, p0, [I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p0, [I

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_4

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1751
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1752
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/lang/String;

    const-string v1, "[,; ]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1753
    :cond_4
    return-object v0
.end method

.method private clearRecentsGroupNow()V
    .locals 13

    .line 1716
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 1717
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->recents:Ljava/lang/Object;

    .line 1718
    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_2

    .line 1719
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 1720
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsRects:Ljava/util/List;

    .line 1721
    iget-wide v3, p0, Ldev/duo/taskcore/WorkspaceShell;->imageEpoch:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const-string v3, "TaskCoreShell"

    if-eqz v0, :cond_1

    .line 1722
    iget-wide v9, p0, Ldev/duo/taskcore/WorkspaceShell;->imageEpoch:J

    iget-wide v11, p0, Ldev/duo/taskcore/WorkspaceShell;->imageFrame:J

    .line 1724
    :try_start_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->groupImagePeer()Landroid/os/IBinder;

    move-result-object v8

    .line 1726
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->imageThread()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda24;

    invoke-direct/range {v7 .. v12}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda24;-><init>(Landroid/os/IBinder;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    goto :goto_0

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    const-string v4, "workbench image clear failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    :goto_0
    iput-wide v5, p0, Ldev/duo/taskcore/WorkspaceShell;->imageEpoch:J

    .line 1740
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsChanged:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recents group cleared "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1742
    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recents group not cleared "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1743
    :goto_1
    return-void

    .line 1718
    :cond_2
    :goto_2
    return-void
.end method

.method private closeRemoteInfo(Ldev/duo/taskcore/WorkspaceShell$Pending;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1924
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteInfo:Ljava/lang/Object;

    .line 1925
    const/4 v1, 0x0

    iput-object v1, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteInfo:Ljava/lang/Object;

    .line 1926
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v1, "releaseAllSurfaces"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    :cond_0
    return-void
.end method

.method private deliverAdopt(I)V
    .locals 1

    .line 1760
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptDelivered:Z

    .line 1761
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 1762
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->adoptReady(I)V

    .line 1763
    :cond_0
    return-void
.end method

.method private deliverLaunched(I)V
    .locals 2

    .line 1042
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    .line 1043
    const/4 v1, -0x1

    iput v1, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    .line 1044
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    .line 1045
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 1046
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v1, p1, v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->launched(ILandroid/os/IBinder;)V

    .line 1047
    :cond_0
    return-void
.end method

.method private finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 793
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishing:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 794
    iget-boolean v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Ldev/duo/taskcore/WorkspaceShell;->placeGroupMembers(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Landroid/view/SurfaceControl$Transaction;)V

    .line 795
    :cond_0
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    iget-boolean v3, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Ldev/duo/taskcore/WorkspaceHost;->finishSystemAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Boolean;)V

    .line 796
    iget-boolean v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 798
    :cond_1
    return-void
.end method

.method private finishTransactionOf(Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;
    .locals 4

    .line 825
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->finishTs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 826
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->mergedInto:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 827
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 828
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->finishTs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    .line 829
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 831
    :cond_0
    goto :goto_0

    .line 832
    :cond_1
    return-object v0
.end method

.method private giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Z",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 1313
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    const-string v2, "TaskCoreShell"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1314
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/duo/taskcore/TaskBinding;

    .line 1316
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v12, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v12, v12, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1317
    if-eqz v10, :cond_0

    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v12, v12, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1320
    iget-object v12, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v13, v3, [Ljava/lang/Object;

    invoke-virtual {v12, v10, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1321
    if-ne v12, v8, :cond_5

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    const/4 v13, -0x1

    if-ne v8, v13, :cond_5

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v13, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v13, v13, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne v8, v13, :cond_5

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    .line 1322
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v13, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v13, v13, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v8, v13, :cond_5

    iget-object v8, v7, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    if-eq v11, v8, :cond_2

    goto/16 :goto_2

    .line 1334
    :cond_2
    iget-object v8, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v8, v8, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    .line 1335
    iget-object v9, v7, Ldev/duo/taskcore/TaskBinding;->snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

    .line 1336
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctMode:Ljava/lang/reflect/Method;

    iget v11, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->windowingMode:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBounds:Ljava/lang/reflect/Method;

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    if-nez v11, :cond_3

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctFocusable:Ljava/lang/reflect/Method;

    iget-boolean v11, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->focusable:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctHidden:Ljava/lang/reflect/Method;

    iget-boolean v11, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->hidden:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBack:Ljava/lang/reflect/Method;

    iget-boolean v11, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->interceptBack:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->wctTrim:Ljava/lang/reflect/Method;

    iget-boolean v9, v9, Ldev/duo/taskcore/TaskBinding$Snapshot;->trimmable:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    if-eq v7, v0, :cond_4

    if-nez p3, :cond_4

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1345
    goto/16 :goto_0

    .line 1323
    :cond_5
    :goto_2
    iget-object v8, v7, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    if-ne v11, v8, :cond_7

    invoke-direct {p0, v7, v10}, Ldev/duo/taskcore/WorkspaceShell;->returnedByWm(Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1325
    new-instance v8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v8}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1326
    :try_start_1
    invoke-direct {p0, v8, v7, v10}, Ldev/duo/taskcore/WorkspaceShell;->restoreLeash(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    :cond_6
    :try_start_2
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 1325
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v4

    .line 1329
    :cond_7
    :goto_4
    iput-boolean v9, v7, Ldev/duo/taskcore/TaskBinding;->handedOver:Z

    .line 1330
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " changed by the system (mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    .line 1331
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v11, :cond_8

    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): not overwritten"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1330
    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    goto/16 :goto_0

    .line 1346
    :cond_9
    if-eqz v0, :cond_a

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "nothing left under this lease to give back"

    invoke-interface {v1, v9, v0}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void

    .line 1348
    :cond_b
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->startTransition:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    filled-new-array {v7, v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$Pending;

    invoke-direct {v4, v9, v5, v1}, Ldev/duo/taskcore/WorkspaceShell$Pending;-><init>(ZLjava/util/List;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    invoke-direct {p0, v0, v4}, Ldev/duo/taskcore/WorkspaceShell;->track(Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1352
    goto :goto_6

    .line 1349
    :catchall_2
    move-exception v0

    .line 1350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "give back "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1353
    :goto_6
    return-void
.end method

.method private groupImagePeer()Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1560
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->launcherService:Ljava/lang/Object;

    .line 1561
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->launcherProxyField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    .line 1562
    :goto_0
    if-eqz v0, :cond_1

    .line 1563
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 1562
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "launcher image peer is not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private guarded(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Play;)Z
    .locals 6

    .line 2160
    const-string v0, "claimed transition "

    const-string v1, "TaskCoreShell"

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2161
    iput-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2163
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p4}, Ldev/duo/taskcore/WorkspaceShell$Play;->run()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2163
    return p1

    .line 2164
    :catchall_0
    move-exception p4

    .line 2165
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed while playing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2166
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p4, :cond_0

    .line 2167
    :try_start_2
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2168
    :goto_0
    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " could not be finished"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 2170
    :cond_0
    :goto_1
    nop

    .line 2171
    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2170
    const/4 p1, 0x1

    return p1

    .line 2171
    :catchall_2
    move-exception p1

    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    throw p1
.end method

.method private imageThread()Landroid/os/Handler;
    .locals 2

    .line 1604
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1605
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskCoreImage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageThread:Landroid/os/HandlerThread;

    .line 1606
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1607
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->imageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageHandler:Landroid/os/Handler;

    .line 1609
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->imageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private installGroupMotion(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 660
    move-object/from16 v9, p2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const-string v2, "com.android.wm.shell.recents.IRecentsAnimationRunner"

    const/4 v10, 0x0

    invoke-static {v2, v10, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 661
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 662
    const-string v2, "mTransition"

    invoke-virtual {v9, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "mListener"

    invoke-virtual {v9, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 663
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 664
    iget-object v13, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v3, Landroid/app/PendingIntent;

    const-class v4, Landroid/content/Intent;

    const-class v5, Landroid/os/Bundle;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    .line 666
    const-string v14, "android.app.IApplicationThread"

    invoke-static {v14, v10, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Class;

    move-result-object v3

    .line 664
    const-string v4, "startRecentsTransition"

    move-object/from16 v5, p1

    invoke-virtual {v5, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v13, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda15;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    .line 666
    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 676
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v4, Landroid/view/SurfaceControl$Transaction;

    const-class v5, Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v6, p3

    filled-new-array {v6, v4, v5, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v4, "start"

    invoke-virtual {v9, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v3, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v2, v11, v8}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda16;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    .line 677
    invoke-interface {v0, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 708
    const-string v0, "com.android.wm.shell.shared.TransitionUtil"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v10, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 709
    const-string v0, "android.view.RemoteAnimationTarget"

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v10, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 710
    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/reflect/Field;

    .line 711
    const-string v4, "startBounds"

    const-string v7, "clipRect"

    const-string v8, "localBounds"

    const-string v11, "screenSpaceBounds"

    filled-new-array {v8, v11, v4, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 712
    move v7, v10

    :goto_0
    if-ge v7, v3, :cond_0

    aget-object v8, v4, v7

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v5, v7

    aget-object v8, v5, v7

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 713
    :cond_0
    const-string v3, "position"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "contentInsets"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 714
    const-string v4, "windowConfiguration"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 715
    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 716
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Landroid/view/SurfaceControl;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v13, p4

    filled-new-array {v13, v4, v11, v12}, [Ljava/lang/Class;

    move-result-object v4

    const-string v11, "newTarget"

    invoke-virtual {v2, v11, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v0, v4}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v11

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;

    move-object v1, p0

    move-object v4, v6

    move-object v6, v3

    move-object v3, v13

    invoke-direct/range {v0 .. v8}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v11, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 753
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkOpeningTaskMatch"

    invoke-virtual {v9, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda18;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 760
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkForceToHome"

    invoke-virtual {v9, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda19;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 766
    const-string v0, "com.android.wm.shell.transition.Transitions"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v10, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 767
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v3, Landroid/os/IBinder;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onFinish"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda20;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 779
    return-void
.end method

.method private installNotificationSources()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 873
    nop

    .line 874
    const-string v0, "StatusBarNotificationActivityStarter$$ExternalSyntheticLambda12"

    const-string v1, "StatusBarNotificationActivityStarterInjectorImpl$startNotificationIntentInjected$1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 876
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const-string v4, "com.android.systemui.statusbar.phone."

    const/4 v5, 0x2

    if-ge v2, v5, :cond_2

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v4, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 878
    if-nez v2, :cond_0

    const-string v5, "f$3"

    goto :goto_1

    :cond_0
    const-string v5, "$intent"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 879
    if-nez v2, :cond_1

    const-string v3, "android.view.RemoteAnimationAdapter"

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v1, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v6, "startPendingIntent"

    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_2

    .line 880
    :cond_1
    const-string v3, "run"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 881
    :goto_2
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v4, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda27;

    invoke-direct {v4, p0, v5}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda27;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;)V

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 888
    :cond_2
    const-string v0, "com.android.systemui.statusbar.notification.collection.NotificationEntry"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 889
    const-string v0, "mSbn"

    invoke-virtual {v7, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 890
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StatusBarNotificationActivityStarter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 893
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v5, Landroid/app/PendingIntent;

    const-class v6, Landroid/content/Intent;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    .line 894
    const-string v8, "com.android.systemui.statusbar.notification.row.ExpandableNotificationRow"

    invoke-static {v8, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Class;

    move-result-object v4

    .line 893
    const-string v5, "startNotificationIntentPublic"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda28;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    .line 895
    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 903
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-string v4, "launchFullScreenIntent"

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, v0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda29;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;)V

    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 912
    const-string v0, "android.content.IIntentSender"

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 913
    const-class v0, Landroid/app/PendingIntent;

    const-string v2, "getTarget"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 914
    const-class v2, Landroid/os/IInterface;

    const-string v3, "asBinder"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 915
    const-class v3, Landroid/app/ActivityOptions;

    const-class v5, Landroid/os/Bundle;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "fromBundle"

    invoke-virtual {v3, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 916
    const-class v3, Landroid/app/ActivityOptions;

    const-string v5, "getLaunchCookie"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 917
    const-string v3, "android.app.IActivityManager$Stub$Proxy"

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    .line 918
    const-string v3, "android.app.IApplicationThread"

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Landroid/os/IBinder;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    const-class v8, Ljava/lang/String;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    .line 920
    const-string v10, "android.content.IIntentReceiver"

    invoke-static {v10, v1, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/String;

    const-class v11, Landroid/os/Bundle;

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Class;

    move-result-object v1

    .line 918
    const-string v3, "sendIntentSender"

    invoke-virtual {v14, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 921
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v3, v1}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    new-instance v5, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda30;

    move-object v6, p0

    move-object v8, v0

    move-object v7, v2

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v5 .. v10}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda30;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 946
    return-void
.end method

.method private isOwnedTask(I)Z
    .locals 8

    .line 1103
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    monitor-enter v0

    .line 1104
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :try_start_1
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v5, "getController"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1107
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->getPendingInfo:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1108
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v6, "getTaskInfo"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1109
    if-eqz v2, :cond_0

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v2, p1, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, p1, :cond_2

    .line 1110
    :cond_1
    :try_start_2
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 1111
    :catch_0
    move-exception v2

    :cond_2
    nop

    .line 1112
    goto :goto_0

    .line 1113
    :cond_3
    monitor-exit v0

    .line 1114
    return v3

    .line 1113
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private keepMembersOnTop(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    .line 1358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/TaskBinding;

    iget-object v4, v3, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v5, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v4, v5, :cond_0

    if-eq v3, v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1360
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v2, v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1361
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    .line 1362
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v4, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1363
    if-eqz v2, :cond_3

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    goto :goto_1

    .line 1364
    :cond_4
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    goto :goto_1

    .line 1365
    :cond_5
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    goto :goto_1

    .line 1367
    :cond_6
    return-void
.end method

.method static synthetic lambda$clearRecentsGroupNow$53(Landroid/os/IBinder;JJ)V
    .locals 1

    .line 1728
    const-string v0, "TaskCoreShell"

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/WorkspaceHome;->clear(Landroid/os/IBinder;JJ)I

    move-result p0

    .line 1729
    if-gez p0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "workbench image clear rejected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1732
    :cond_0
    goto :goto_0

    .line 1730
    :catch_0
    move-exception p0

    .line 1731
    const-string p1, "workbench image clear failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    :goto_0
    return-void
.end method

.method static synthetic lambda$createHost$42(Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V
    .locals 0

    .line 1200
    invoke-interface {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$createHost$43(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V
    .locals 2

    .line 1200
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda10;

    invoke-direct {p0, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda10;-><init>(Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$createHost$44(Ldev/duo/taskcore/WorkspaceShell$Events;I)V
    .locals 0

    .line 1214
    invoke-interface {p0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->taskGone(I)V

    return-void
.end method

.method static synthetic lambda$createHost$46(Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 2

    .line 1226
    const/4 v0, 0x0

    const-string v1, "surface not created in 3000ms"

    invoke-interface {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$install$17(Ldev/duo/taskcore/WorkspaceShell$Events;Ldev/duo/taskcore/TaskBinding;Z)V
    .locals 6

    .line 611
    iget-wide v1, p1, Ldev/duo/taskcore/TaskBinding;->epoch:J

    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, p1, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    move-object v0, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell$Events;->pipFinished(JILjava/lang/Object;Z)V

    return-void
.end method

.method static synthetic lambda$install$21(Landroid/os/IBinder;)Ljava/util/List;
    .locals 0

    .line 626
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$installGroupMotion$24(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 685
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onAnimationStart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "onTasksAppeared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_0
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_7

    .line 686
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 687
    aget-object v0, p4, p2

    .line 688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 690
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 691
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "taskId"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 692
    nop

    .line 693
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->members:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/duo/taskcore/TaskBinding;

    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v7, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v2

    .line 694
    :goto_1
    if-eqz v6, :cond_3

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->main:Ldev/duo/taskcore/TaskBinding;

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    if-ne v5, v6, :cond_4

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    .line 697
    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 698
    :cond_6
    aput-object p0, p4, p2

    .line 700
    :cond_7
    :try_start_0
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 701
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method static synthetic lambda$isolate$64(Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V
    .locals 0

    .line 2270
    invoke-interface {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$isolate$65(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V
    .locals 2

    .line 2270
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda26;

    invoke-direct {p0, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda26;-><init>(Ldev/duo/taskcore/WorkspaceSession$Done;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$place$61(Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 2

    .line 2225
    const/4 v0, 0x1

    const-string v1, "placed"

    invoke-interface {p0, v0, v1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$place$62(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 2

    .line 2225
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda25;

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda25;-><init>(Ldev/duo/taskcore/WorkspaceSession$Done;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$place$63(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Z)V
    .locals 0

    .line 2227
    if-nez p0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2228
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p1}, Ldev/duo/taskcore/WorkspaceHost;->place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLjava/lang/Runnable;)V

    .line 2229
    return-void
.end method

.method static synthetic lambda$revealTask$54(ILjava/lang/Integer;)Z
    .locals 0

    .line 1880
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$serverBeginReturn$40(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    .line 1176
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$serverLayout$39(ILandroid/os/Parcel;)V
    .locals 0

    .line 1171
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method static synthetic lambda$serverOpen$37(ILandroid/os/Parcel;)V
    .locals 0

    .line 1156
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method static synthetic lambda$serverRelease$41(Ldev/duo/taskcore/TaskBinding;Landroid/os/Parcel;)V
    .locals 1

    .line 1181
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget-object p0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p0, p0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p1, v0, p0}, Ldev/duo/taskcore/WorkspaceProtocol;->writeRelease(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$serverSnapshot$38(Ldev/duo/taskcore/TaskBinding;Landroid/os/Parcel;)V
    .locals 1

    .line 1163
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1165
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget-object p0, p0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p0, p0, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    return-void
.end method

.method public static members(Ldev/duo/taskcore/WorkspaceSession;)[Ljava/lang/String;
    .locals 6

    .line 1092
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1093
    invoke-virtual {p0}, Ldev/duo/taskcore/WorkspaceSession;->main()Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    .line 1094
    const-string v2, ":"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v5, v5, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1095
    :cond_0
    :goto_0
    const/4 v1, 0x4

    if-ge v3, v1, :cond_2

    .line 1096
    invoke-virtual {p0, v3}, Ldev/duo/taskcore/WorkspaceSession;->slot(I)Ldev/duo/taskcore/TaskBinding;

    move-result-object v1

    .line 1097
    add-int/lit8 v3, v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v5, v5, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v0, v3

    goto :goto_0

    .line 1099
    :cond_2
    return-object v0
.end method

.method private onHandler(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1378
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x6

    const-string v6, "handleRequest"

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "getTransitionType"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "canHandleTransition"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "handleRequestOnly"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_4
    const-string v3, "startAnimation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto :goto_1

    :sswitch_5
    const-string v3, "takeOverAnimation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v3, "hashCode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v3, "getHandlerForTakeover"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_8
    const-string v3, "mergeAnimation"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_1

    :sswitch_9
    const-string v3, "equals"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_a
    const-string v3, "onTransitionConsumed"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_1

    :sswitch_b
    const-string v3, "toString"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :goto_0
    move v0, v12

    :goto_1
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1452
    return-object v3

    .line 1451
    :pswitch_0
    const-string v0, "TaskCoreTransitionHandler"

    return-object v0

    .line 1450
    :pswitch_1
    aget-object v0, p2, v11

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    move v10, v11

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1449
    :pswitch_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1448
    :pswitch_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1447
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 1446
    :pswitch_5
    return-object v3

    .line 1431
    :pswitch_6
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    aget-object v4, p2, v11

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    aget-object v4, p2, v11

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    .line 1433
    :cond_2
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1437
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    aget-object v5, p2, v11

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceShell;->keepMembersOnTop(Ljava/lang/Object;)V

    .line 1438
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_3
    goto :goto_4

    :cond_4
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->requestResultNew:Ljava/lang/reflect/Constructor;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_4
    return-object v0

    .line 1439
    :catch_0
    move-exception v0

    .line 1441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "claim of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v11

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: left to the system"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TaskCoreShell"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    aget-object v4, p2, v11

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    aget-object v1, p2, v11

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    return-object v3

    .line 1423
    :pswitch_7
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    aget-object v4, p2, v8

    check-cast v4, Landroid/os/IBinder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$Pending;

    .line 1424
    if-eqz v0, :cond_5

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->oneShotMerge:Ljava/lang/reflect/Method;

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    :cond_5
    return-object v3

    .line 1386
    :pswitch_8
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    aget-object v4, p2, v11

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    aget-object v4, p2, v11

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pending:Ljava/util/Map;

    aget-object v4, p2, v11

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$Pending;

    .line 1389
    if-nez v0, :cond_6

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    aget-object v4, p2, v11

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$Pending;

    .line 1390
    :cond_6
    if-eqz v0, :cond_d

    .line 1391
    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 1392
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->oneShotConsumed:Ljava/lang/reflect/Method;

    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    aget-object v6, p2, v11

    aget-object v7, p2, v10

    aget-object v8, p2, v9

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 1394
    if-eqz v4, :cond_9

    iget-boolean v5, v4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    if-eqz v5, :cond_9

    iget-object v5, v4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    aget-object v6, p2, v11

    if-ne v5, v6, :cond_9

    .line 1395
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1396
    :try_start_1
    aget-object v6, p2, v9

    if-nez v6, :cond_7

    move-object v6, v5

    goto :goto_5

    :cond_7
    aget-object v6, p2, v9

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 1397
    :goto_5
    iget-object v7, v4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v6, v8, v3}, Ldev/duo/taskcore/WorkspaceHost;->finishSystemAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/Boolean;)V

    .line 1398
    iget-object v7, v4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v6, v7, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1399
    aget-object v6, p2, v9

    if-nez v6, :cond_8

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    :cond_8
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1401
    iput-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 1402
    iget-object v4, v4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    goto :goto_7

    .line 1395
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1

    .line 1404
    :cond_9
    :goto_7
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceShell;->closeRemoteInfo(Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    .line 1407
    :cond_a
    aget-object v2, p2, v10

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "transition aborted"

    goto :goto_8

    :cond_b
    const-string v2, "transition consumed by another handler"

    .line 1408
    :goto_8
    iget-boolean v4, v0, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    const-wide/16 v5, 0x1388

    if-nez v4, :cond_c

    .line 1411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {p0, v0, v2, v7, v8}, Ldev/duo/taskcore/WorkspaceShell;->verifyAttach(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    goto :goto_9

    .line 1417
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {p0, v0, v2, v7, v8}, Ldev/duo/taskcore/WorkspaceShell;->verifyReturn(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    .line 1420
    :cond_d
    :goto_9
    return-object v3

    .line 1381
    :pswitch_9
    array-length v0, p2

    if-ne v0, v5, :cond_e

    move v0, v10

    goto :goto_a

    :cond_e
    move v0, v11

    .line 1382
    :goto_a
    aget-object v3, p2, v11

    check-cast v3, Landroid/os/IBinder;

    aget-object v5, p2, v10

    if-eqz v0, :cond_f

    move v9, v7

    :cond_f
    aget-object v6, p2, v9

    check-cast v6, Landroid/view/SurfaceControl$Transaction;

    .line 1383
    if-eqz v0, :cond_10

    move v7, v8

    :cond_10
    aget-object v7, p2, v7

    check-cast v7, Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_11

    goto :goto_b

    :cond_11
    move v4, v8

    :goto_b
    aget-object v0, p2, v4

    .line 1382
    move-object v1, p0

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ldev/duo/taskcore/WorkspaceShell;->startAnimation(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_b
        -0x55a01f64 -> :sswitch_a
        -0x4d378041 -> :sswitch_9
        -0x4aa929d4 -> :sswitch_8
        -0x23edf1f0 -> :sswitch_7
        0x8cdac1b -> :sswitch_6
        0x17d0fbc9 -> :sswitch_5
        0x2d8c4542 -> :sswitch_4
        0x63bc5f47 -> :sswitch_3
        0x6482f793 -> :sswitch_2
        0x7006498d -> :sswitch_1
        0x772a8b25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onSourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 4

    .line 950
    iget-wide v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->epoch:J

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 951
    :cond_0
    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->event:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 952
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->handledSources:Ljava/util/Set;

    iget-object v2, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->request:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 953
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->sourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 954
    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    if-nez v0, :cond_5

    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    if-eqz v0, :cond_5

    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget v0, v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    .line 955
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceShell;->isOwnedTask(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 957
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v2, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget v2, v2, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 958
    if-eqz v0, :cond_3

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_3

    .line 959
    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v1, v2, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->adopt(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->adoptReady(I)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_3
    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "notification result task"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 964
    :cond_4
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->sourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 965
    :cond_5
    :goto_1
    return-void

    .line 950
    :cond_6
    :goto_2
    return-void
.end method

.method private onTransitionReady(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 802
    const-string v0, "TaskCoreShell"

    if-eqz p4, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->finishTs:Ljava/util/Map;

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :cond_0
    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 804
    if-eqz p4, :cond_4

    if-nez p3, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoKeyguardGoingAway:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    return-void

    .line 811
    :cond_2
    nop

    .line 812
    invoke-interface {p4}, Ldev/duo/taskcore/WorkspaceShell$Events;->unlocking()Landroid/view/SurfaceControl;

    move-result-object p2

    .line 813
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 814
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->keyguardExit:Landroid/os/IBinder;

    .line 815
    const/4 p1, 0x1

    invoke-virtual {p3, p2, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 816
    const-string p1, "keyguard going away: workbench root shown in the same transition"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_3
    return-void

    .line 807
    :catch_0
    move-exception p1

    .line 809
    const-string p2, "keyguard flag unreadable: unlock falls back to the shade signal"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    return-void

    .line 804
    :cond_4
    :goto_0
    return-void
.end method

.method public static pickTasks(Landroid/content/Context;Ljava/util/Set;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 1067
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1071
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "displayId"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1072
    :cond_1
    const-class v4, Landroid/app/TaskInfo;

    const-string v5, "getWindowingMode"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 1073
    :cond_2
    const-class v4, Landroid/app/TaskInfo;

    const-string v6, "getActivityType"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_3

    goto :goto_0

    .line 1074
    :cond_3
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_4

    move-object v4, v1

    goto :goto_1

    :cond_4
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1075
    :goto_1
    if-eqz v4, :cond_0

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.android.systemui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 1076
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isVisible"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return-object v1

    .line 1077
    :cond_6
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_7

    goto :goto_2

    .line 1079
    :cond_7
    goto/16 :goto_0

    .line 1083
    :cond_8
    :goto_2
    nop

    .line 1084
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    return-object v1

    .line 1085
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p1, p0, [I

    .line 1086
    nop

    :goto_3
    if-ge v3, p0, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1087
    :cond_a
    return-object p1

    .line 1080
    :catch_0
    move-exception p0

    .line 1081
    const-string p1, "TaskCoreShell"

    const-string v0, "task info unreadable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1082
    return-object v1
.end method

.method private placeGroupMembers(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 782
    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->members:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/TaskBinding;

    .line 783
    iget-object v1, v0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v2, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 785
    if-eqz v1, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    .line 786
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne v2, v3, :cond_1

    .line 787
    invoke-direct {p0, p2, v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->placeIfApplied(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    .line 788
    :cond_1
    goto :goto_0

    .line 789
    :cond_2
    return-void
.end method

.method private placeIfApplied(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 1459
    :goto_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->wcBounds:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->cfgWindow:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->taskConfig:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1460
    if-eqz v0, :cond_4

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v2, 0x6

    if-ne p3, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    .line 1461
    :cond_1
    iget-object p3, p2, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p3, p3, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    check-cast p3, Landroid/view/SurfaceControl;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v2, p2, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    .line 1462
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1463
    :cond_2
    invoke-virtual {p1, p3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, p3, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, p3, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1464
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, p3, v1, v0}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 1465
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1466
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget-object p2, p2, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p2, p2, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1467
    return v2

    .line 1462
    :cond_3
    :goto_1
    return v3

    .line 1460
    :cond_4
    :goto_2
    return v3
.end method

.method private placeOverlays(Landroid/view/SurfaceControl$Transaction;)Z
    .locals 9

    .line 1844
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1845
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 1846
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v2, v2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 1847
    :goto_0
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1848
    :goto_1
    nop

    .line 1849
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1850
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1852
    :try_start_0
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    nop

    .line 1854
    if-nez v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1855
    :cond_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    .line 1856
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 1857
    :cond_5
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 1858
    const/4 v6, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ldev/duo/taskcore/WorkspaceShell$Events;->keepsOverlay()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v2, :cond_6

    goto :goto_3

    .line 1866
    :cond_6
    invoke-virtual {p1, v5, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5, v7, v7}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1867
    const/16 v7, 0x384

    invoke-virtual {v1, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1868
    nop

    .line 1869
    move v1, v6

    goto :goto_2

    .line 1860
    :cond_7
    :goto_3
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    .line 1861
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1, v5, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1862
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1863
    nop

    .line 1864
    move v1, v6

    goto/16 :goto_2

    .line 1853
    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "overlay task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " unreadable: kept, not moved"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TaskCoreShell"

    invoke-static {v7, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1870
    :cond_9
    return v1
.end method

.method private playLaunchHidden(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1782
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 1783
    :goto_0
    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceShell;->infoChanges:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1784
    iget-object v7, v0, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1785
    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    .line 1786
    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 1787
    :cond_1
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move/from16 v9, p5

    if-ne v8, v9, :cond_2

    .line 1788
    move-object/from16 v8, p2

    invoke-virtual {v8, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1789
    move-object/from16 v10, p3

    invoke-virtual {v10, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1790
    goto :goto_1

    .line 1792
    :cond_2
    move-object/from16 v8, p2

    move-object/from16 v10, p3

    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldev/duo/taskcore/TaskBinding;

    .line 1793
    iget-object v13, v12, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v14, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v13, v14, :cond_7

    iget-object v13, v12, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v13, v13, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v14, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v13, v14, :cond_7

    if-nez v1, :cond_3

    goto :goto_2

    .line 1794
    :cond_3
    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v12, v12, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/SurfaceControl;

    .line 1795
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    .line 1796
    :cond_4
    filled-new-array/range {p2 .. p3}, [Landroid/view/SurfaceControl$Transaction;

    move-result-object v13

    move v14, v4

    :goto_3
    const/4 v15, 0x2

    if-ge v14, v15, :cond_5

    aget-object v15, v13, v14

    .line 1797
    const/16 v16, 0x0

    invoke-virtual {v15, v5, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v4, v4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1798
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v15, v5, v2, v4}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 1796
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 1800
    :cond_5
    const/16 v16, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 1795
    :cond_6
    const/16 v16, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 1793
    :cond_7
    const/16 v16, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 1801
    :cond_8
    const/16 v16, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1786
    :cond_9
    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move/from16 v9, p5

    const/16 v16, 0x0

    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1802
    :cond_a
    move-object/from16 v8, p2

    const/16 v16, 0x0

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1803
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_b

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1804
    :cond_b
    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1805
    return v6
.end method

.method private playOverlay(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1814
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v1, v1, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 1815
    :goto_0
    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceShell;->infoChanges:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1816
    iget-object v7, v0, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1817
    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    .line 1818
    if-eqz v7, :cond_9

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    .line 1819
    :cond_1
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move/from16 v9, p5

    if-ne v8, v9, :cond_3

    .line 1820
    iget-object v6, v0, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    iget-object v7, v0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl;

    .line 1821
    iget-object v7, v0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v5, v6

    :cond_2
    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    goto :goto_1

    .line 1824
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, v0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldev/duo/taskcore/TaskBinding;

    .line 1825
    iget-object v11, v10, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v12, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v11, v12, :cond_4

    iget-object v11, v10, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v12, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v11, v12, :cond_4

    if-nez v1, :cond_5

    goto :goto_2

    .line 1826
    :cond_5
    iget-object v11, v0, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v10, v10, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v11, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceControl;

    .line 1827
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    .line 1828
    :cond_6
    filled-new-array/range {p2 .. p3}, [Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    move v12, v4

    :goto_3
    const/4 v13, 0x2

    if-ge v12, v13, :cond_7

    aget-object v13, v11, v12

    .line 1829
    invoke-virtual {v13, v5, v10}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v5, v15, v15}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    invoke-virtual {v14, v5, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1830
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v13, v5, v14, v15}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 1828
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1832
    :cond_7
    goto :goto_2

    .line 1833
    :cond_8
    goto/16 :goto_1

    .line 1818
    :cond_9
    move/from16 v9, p5

    goto/16 :goto_1

    .line 1834
    :cond_a
    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->placeOverlays(Landroid/view/SurfaceControl$Transaction;)Z

    .line 1835
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Ldev/duo/taskcore/WorkspaceShell;->placeOverlays(Landroid/view/SurfaceControl$Transaction;)Z

    .line 1836
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1837
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_b

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell;->finishing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1838
    :cond_b
    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    return v6
.end method

.method private playPending(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;[Z)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2030
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 2031
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2032
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 2033
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->infoChanges:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    move-object/from16 v11, p2

    invoke-virtual {v8, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 2034
    iget-object v14, v1, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    new-array v15, v9, [Ljava/lang/Object;

    invoke-virtual {v14, v10, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2035
    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v15, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/SurfaceControl;

    .line 2036
    if-nez v14, :cond_0

    goto :goto_0

    .line 2037
    :cond_0
    nop

    .line 2038
    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2039
    iget-object v15, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Ldev/duo/taskcore/TaskBinding;

    .line 2040
    move-object/from16 v18, v8

    iget-object v8, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v8, v8, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v11, v14, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v8, v11, :cond_1

    if-eqz v12, :cond_1

    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    move-object/from16 v20, v15

    const/4 v11, 0x0

    new-array v15, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v8, v11, :cond_2

    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    .line 2041
    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v8, v11, :cond_2

    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne v8, v11, :cond_2

    move-object v13, v9

    goto :goto_2

    .line 2040
    :cond_1
    move-object/from16 v20, v15

    :cond_2
    :goto_2
    move-object/from16 v11, p2

    move-object/from16 v8, v18

    move-object/from16 v15, v20

    const/4 v9, 0x0

    goto :goto_1

    .line 2042
    :cond_3
    move-object/from16 v18, v8

    if-nez v13, :cond_4

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2043
    :cond_4
    invoke-static {v13}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2044
    :cond_5
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v8

    if-nez v8, :cond_6

    move-object/from16 v20, v0

    goto/16 :goto_8

    .line 2045
    :cond_6
    iget-boolean v8, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-nez v8, :cond_c

    .line 2047
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v8, v14, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2048
    iget-object v9, v1, Ldev/duo/taskcore/WorkspaceShell;->wcBounds:Ljava/lang/reflect/Method;

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->cfgWindow:Ljava/lang/reflect/Field;

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceShell;->taskConfig:Ljava/lang/reflect/Field;

    invoke-virtual {v15, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-array v14, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 2049
    const/4 v11, 0x6

    if-ne v8, v11, :cond_b

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto/16 :goto_4

    .line 2051
    :cond_7
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v9, v13, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    .line 2052
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    .line 2053
    :cond_8
    invoke-virtual {v3, v10, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 2054
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v3, v10, v9, v12}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 2055
    invoke-virtual {v4, v10, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    invoke-virtual {v8, v10, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 2056
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v4, v10, v8, v9}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 2057
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v8, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2058
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget-object v9, v13, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v9, v9, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2059
    iget-object v8, v13, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v8, v8, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v9, v1, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    if-ne v8, v9, :cond_9

    const/4 v8, -0x1

    iput v8, v1, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    .line 2060
    :cond_9
    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 2052
    :cond_a
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " TaskView surface gone"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2049
    :cond_b
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " WM not applied: mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " bounds "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2062
    :cond_c
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    .line 2063
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_d

    move-object/from16 v20, v0

    goto :goto_7

    .line 2064
    :cond_d
    iget-object v9, v1, Ldev/duo/taskcore/WorkspaceShell;->infoPosition:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    .line 2065
    filled-new-array/range {p3 .. p4}, [Landroid/view/SurfaceControl$Transaction;

    move-result-object v11

    const/4 v12, 0x0

    :goto_5
    const/4 v14, 0x2

    if-ge v12, v14, :cond_e

    aget-object v14, v11, v12

    .line 2066
    invoke-virtual {v14, v10, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v15

    move-object/from16 v20, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v15, v10, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v15

    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    move-object/from16 v21, v8

    iget v8, v9, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v15, v10, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v10, v8}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v0, v10, v15}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2067
    invoke-static {v14, v10, v8}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 2065
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    move-object/from16 v8, v21

    goto :goto_5

    .line 2069
    :cond_e
    move-object/from16 v20, v0

    const/4 v12, 0x1

    invoke-virtual {v3, v10, v12}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 2071
    :goto_6
    invoke-interface {v7, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2072
    move-object/from16 v11, p2

    move-object/from16 v8, v18

    move-object/from16 v0, v20

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2063
    :cond_f
    move-object/from16 v20, v0

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " task display area gone"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    move-object/from16 v0, v20

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2044
    :cond_10
    move-object/from16 v20, v0

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " has no valid leash in the transition"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p2

    move-object/from16 v8, v18

    move-object/from16 v0, v20

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2074
    :cond_11
    iget-object v0, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "TaskCoreShell"

    if-eqz v8, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldev/duo/taskcore/TaskBinding;

    .line 2075
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-static {v8}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_9

    .line 2076
    :cond_13
    iget-object v10, v1, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v12, v8, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v12, v12, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2077
    if-eqz v10, :cond_14

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v8, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v12, v12, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v11, v12, :cond_14

    const/4 v11, 0x1

    goto :goto_a

    :cond_14
    const/4 v11, 0x0

    .line 2078
    :goto_a
    if-eqz v11, :cond_15

    iget-boolean v12, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-eqz v12, :cond_15

    iget-object v12, v8, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    if-eqz v12, :cond_15

    invoke-direct {v1, v8, v10}, Ldev/duo/taskcore/WorkspaceShell;->returnedByWm(Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 2080
    invoke-direct {v1, v3, v8, v10}, Ldev/duo/taskcore/WorkspaceShell;->restoreLeash(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v9

    if-nez v9, :cond_19

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " returned by WM but its leash could not be restored"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2081
    :cond_15
    if-eqz v11, :cond_16

    iget-boolean v12, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-nez v12, :cond_16

    invoke-direct {v1, v3, v8, v10}, Ldev/duo/taskcore/WorkspaceShell;->placeIfApplied(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 2083
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " applied outside our transition: leash placed into its card"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2084
    :cond_16
    if-eqz v11, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not moved by the transition"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2085
    :cond_17
    iget-boolean v10, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-nez v10, :cond_18

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vanished before attach"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 2086
    :cond_18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " vanished before return: nothing to give back"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    :cond_19
    :goto_b
    goto/16 :goto_9

    .line 2088
    :cond_1a
    iget-object v0, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    if-eqz v0, :cond_1e

    .line 2090
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct/range {p0 .. p6}, Ldev/duo/taskcore/WorkspaceShell;->playRestoreRemote(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)Z

    move-result v0

    const/16 v17, 0x1

    const/16 v19, 0x0

    aput-boolean v17, p7, v19

    return v0

    .line 2091
    :cond_1b
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotConsumed:Ljava/lang/reflect/Method;

    iget-object v7, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v2, v8, v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2101
    goto :goto_c

    .line 2092
    :catch_0
    move-exception v0

    .line 2093
    const-string v7, "group restore remote failed"

    invoke-static {v9, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2094
    iget-boolean v7, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteFinished:Z

    if-eqz v7, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote finish failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v0}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    const/16 v17, 0x1

    return v17

    .line 2095
    :cond_1c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remote restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2096
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotConsumed:Ljava/lang/reflect/Method;

    iget-object v7, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v2, v8, v4}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 2099
    if-eqz v0, :cond_1d

    iget-object v7, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    if-ne v7, v2, :cond_1d

    iput-boolean v12, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishing:Z

    const/4 v11, 0x0

    iput-boolean v11, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    invoke-direct {v1, v4}, Ldev/duo/taskcore/WorkspaceShell;->finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 2100
    :cond_1d
    invoke-direct {v1, v5}, Ldev/duo/taskcore/WorkspaceShell;->closeRemoteInfo(Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    .line 2103
    :cond_1e
    :goto_c
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2104
    const/16 v17, 0x1

    const/16 v19, 0x0

    aput-boolean v17, p7, v19

    .line 2105
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    const/16 v16, 0x0

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-boolean v1, v5, Ldev/duo/taskcore/WorkspaceShell$Pending;->giveBack:Z

    if-eqz v1, :cond_1f

    const-string v1, "returned"

    goto :goto_d

    :cond_1f
    const-string v1, "attached"

    goto :goto_d

    :cond_20
    const-string v1, "; "

    invoke-static {v1, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :goto_d
    invoke-virtual {v5, v0, v1}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    .line 2107
    const/16 v17, 0x1

    return v17
.end method

.method private playRestoreRemote(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1932
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v3, p6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    .line 1973
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1932
    new-array v6, v4, [Ljava/lang/Class;

    const-string v8, "localRemoteCopy"

    invoke-virtual {v0, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1933
    iput-object v8, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteInfo:Ljava/lang/Object;

    .line 1934
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->infoChanges:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1935
    nop

    .line 1936
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1937
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1938
    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1939
    if-nez v11, :cond_0

    move-object/from16 v16, v0

    goto/16 :goto_3

    .line 1940
    :cond_0
    nop

    .line 1941
    iget-object v12, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldev/duo/taskcore/TaskBinding;

    iget-object v14, v13, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v14, v14, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v15, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v14, v15, :cond_1

    iget-object v14, v13, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v14, v14, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    .line 1942
    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v15, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v14, v0, :cond_2

    goto :goto_2

    .line 1941
    :cond_1
    move-object/from16 v16, v0

    :cond_2
    move-object/from16 v0, v16

    goto :goto_1

    :cond_3
    move-object/from16 v16, v0

    const/4 v13, 0x0

    .line 1943
    :goto_2
    if-nez v13, :cond_4

    goto :goto_3

    .line 1944
    :cond_4
    iget-object v0, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->primary:Ldev/duo/taskcore/TaskBinding;

    if-ne v13, v0, :cond_5

    move-object v9, v10

    move-object/from16 v0, v16

    goto :goto_0

    .line 1945
    :cond_5
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 1946
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v6, "getSnapshot"

    new-array v11, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 1947
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 1948
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 1949
    nop

    .line 1936
    :goto_3
    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 1950
    :cond_7
    if-eqz v9, :cond_9

    .line 1951
    const-string v0, "com.android.wm.shell.shared.TransitionUtil"

    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1952
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Class;

    move-result-object v6

    const-string v10, "rootIndexFor"

    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v9, v8}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1953
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getRoot"

    invoke-virtual {v6, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1954
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v10, "getLeash"

    new-array v11, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl;

    .line 1955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getOffset"

    new-array v12, v4, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1956
    new-instance v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v12, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->primary:Ldev/duo/taskcore/TaskBinding;

    iget-object v13, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-direct {v10, v11, v12, v13}, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;Ljava/util/List;)V

    .line 1957
    iput-object v2, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    const/4 v11, 0x1

    iput-boolean v11, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    iput-boolean v11, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    .line 1958
    new-instance v12, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v12}, Landroid/view/SurfaceControl$Builder;-><init>()V

    const-string v13, "TaskCore group restore"

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v6

    .line 1959
    const-class v12, Landroid/view/SurfaceControl$Builder;

    const-string v13, "setContainerLayer"

    new-array v14, v4, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    invoke-virtual {v12, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v6

    iput-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    .line 1961
    iput-object v10, v1, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 1962
    iget-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v6}, Ldev/duo/taskcore/WorkspaceHost;->beginSystemAnimation()V

    .line 1963
    iget-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v6}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v6

    iget-object v12, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v6, v12}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v12, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v12}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    iget-object v12, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v12}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v6, v12, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 1964
    invoke-virtual {v6}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v4, v6, v11}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    iget v12, v0, Landroid/graphics/Point;->x:I

    neg-int v12, v12

    int-to-float v12, v12

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v4, v6, v12, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4, v11}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1966
    invoke-direct {v1, v7, v11}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1967
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mLeash"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1968
    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->release()V

    .line 1969
    const-class v4, Landroid/view/SurfaceControl;

    const-class v6, Landroid/view/SurfaceControl;

    const-class v12, Ljava/lang/String;

    filled-new-array {v6, v12}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iget-object v6, v10, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    const-string v12, "TaskCore group remote"

    filled-new-array {v6, v12}, [Ljava/lang/Object;

    move-result-object v6

    .line 1970
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1969
    invoke-virtual {v0, v9, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1971
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Landroid/graphics/Rect;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setStartAbsBounds"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v6, v6, Ldev/duo/taskcore/Geometry;->display:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Landroid/graphics/Rect;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setEndAbsBounds"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v1, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v6, v6, Ldev/duo/taskcore/Geometry;->display:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v6}, [Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setEndRelOffset"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v5, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    iget-object v9, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v12

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda32;

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda32;-><init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/IBinder;Ldev/duo/taskcore/WorkspaceShell$Pending;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;)V

    invoke-static {v9, v12, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 1994
    iget-object v1, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotStart:Ljava/lang/reflect/Method;

    iget-object v3, v3, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    filled-new-array {v2, v8, v7, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1995
    if-eqz v0, :cond_8

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whole workbench restore remote started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskCoreShell"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    return v11

    .line 1995
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OneShotRemoteHandler rejected its bound transition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1950
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "restore transition has no primary workbench member"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private publishGroupFrame()V
    .locals 15

    .line 1568
    const-string v11, "TaskCoreShell"

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 1569
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 1570
    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-wide v3, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 1571
    :cond_0
    nop

    .line 1573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1575
    const/4 v12, 0x0

    :try_start_0
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v5, v5, Ldev/duo/taskcore/Geometry;->display:Landroid/graphics/Rect;

    .line 1576
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v7, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1577
    const-string v7, "android.window.ScreenCaptureInternal"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "captureLayers"

    const-class v9, Landroid/view/SurfaceControl;

    const-class v10, Landroid/graphics/Rect;

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v9, v10, v13}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1578
    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v0, v8, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1579
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "workbench capture on shell thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "us"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    if-eqz v0, :cond_3

    .line 1581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getHardwareBuffer"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1582
    if-eqz v9, :cond_2

    .line 1583
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getColorSpace"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/ColorSpace;

    .line 1584
    iget-wide v3, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    iget-wide v6, p0, Ldev/duo/taskcore/WorkspaceShell;->imageFrame:J

    const-wide/16 v13, 0x1

    add-long/2addr v6, v13

    iput-wide v6, p0, Ldev/duo/taskcore/WorkspaceShell;->imageFrame:J

    .line 1585
    iput-wide v3, p0, Ldev/duo/taskcore/WorkspaceShell;->imageEpoch:J

    .line 1586
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v8, v5

    move-wide v5, v6

    new-array v7, v0, [I

    .line 1587
    nop

    :goto_0
    if-ge v8, v0, :cond_1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v8, v0, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    .line 1589
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->groupImagePeer()Landroid/os/IBinder;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    nop

    .line 1591
    nop

    .line 1594
    :try_start_2
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->imageThread()Landroid/os/Handler;

    move-result-object v13

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;-><init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1597
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v12, v9

    goto :goto_3

    .line 1595
    :catch_0
    move-exception v0

    move-object v12, v9

    goto :goto_1

    .line 1582
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "workbench capture has no buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1580
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "workbench layer capture returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1597
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1595
    :catch_1
    move-exception v0

    .line 1596
    :goto_1
    :try_start_5
    const-string v1, "workbench image capture failed"

    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1597
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1598
    :cond_4
    :goto_2
    return-void

    .line 1597
    :goto_3
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_5
    throw v0

    .line 1570
    :cond_6
    :goto_4
    return-void
.end method

.method private reclaimMembers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;Z)V

    return-void
.end method

.method private reclaimMembers(Landroid/view/SurfaceControl$Transaction;Z)V
    .locals 11

    .line 846
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 848
    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 849
    :cond_2
    :try_start_0
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    if-eqz p1, :cond_3

    move-object v2, p1

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 851
    :goto_1
    nop

    .line 852
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/duo/taskcore/TaskBinding;

    .line 853
    iget-object v7, v6, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v8, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-eq v7, v8, :cond_5

    goto :goto_2

    .line 854
    :cond_5
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v9, v6, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v9, v9, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 855
    if-eqz v7, :cond_4

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v6, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v9, v9, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v8, v9, :cond_6

    goto :goto_2

    .line 856
    :cond_6
    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    goto :goto_2

    .line 857
    :cond_7
    iget-object v8, v6, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v8, v8, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    check-cast v8, Landroid/view/SurfaceControl;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl;

    .line 858
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    .line 859
    :cond_8
    invoke-virtual {v2, v8, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v6, 0x1

    if-nez p2, :cond_a

    const-class v9, Landroid/app/TaskInfo;

    const-string v10, "isVisible"

    .line 860
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    move v7, v4

    goto :goto_4

    :cond_a
    :goto_3
    move v7, v6

    :goto_4
    invoke-virtual {v5, v8, v7}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 861
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v2, v8, v5, v7}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 862
    nop

    .line 863
    move v5, v6

    goto/16 :goto_2

    .line 864
    :cond_b
    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceShell;->placeOverlays(Landroid/view/SurfaceControl$Transaction;)Z

    move-result p2

    or-int/2addr p2, v5

    .line 865
    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 868
    goto :goto_6

    .line 849
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 866
    :catch_0
    move-exception p1

    .line 867
    const-string p2, "TaskCoreShell"

    const-string v0, "reclaim members failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    :goto_6
    return-void
.end method

.method private static released(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 1

    .line 2151
    iget-object p0, p0, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v0, Ldev/duo/taskcore/TaskBinding$Lease;->RELEASED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private restoreLeash(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1902
    iget-object v0, p2, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    .line 1903
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1904
    :cond_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoPosition:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1905
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v4, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1906
    invoke-static {p1, v0, v2}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 1907
    const-class v1, Landroid/app/TaskInfo;

    const-string v2, "isVisible"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1908
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " returned outside our transition: leash restored to the task area"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskCoreShell"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/4 p1, 0x1

    return p1

    .line 1903
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private returnOrphans(Landroid/graphics/Rect;)V
    .locals 11

    .line 993
    const-string v0, "TaskCoreShell"

    .line 994
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x6

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 996
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    goto :goto_0

    .line 997
    :cond_1
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->infoActivityType:Ljava/lang/reflect/Method;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    goto :goto_0

    .line 998
    :cond_2
    const-class v6, Landroid/app/TaskInfo;

    const-string v9, "isVisible"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 999
    :cond_3
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->wcBounds:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->cfgWindow:Ljava/lang/reflect/Field;

    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->taskConfig:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 1000
    :cond_4
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1001
    if-nez v4, :cond_5

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1002
    :cond_5
    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->wctMode:Ljava/lang/reflect/Method;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBounds:Ljava/lang/reflect/Method;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->wctFocusable:Ljava/lang/reflect/Method;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v6, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBack:Ljava/lang/reflect/Method;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->wctTrim:Ljava/lang/reflect/Method;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v7, :cond_6

    const-string v5, ""

    goto :goto_1

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    goto/16 :goto_0

    .line 1009
    :cond_7
    if-nez v4, :cond_8

    return-void

    .line 1010
    :cond_8
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->startTransition:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orphaned workbench tasks returned to fullscreen "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    goto :goto_2

    .line 1012
    :catch_0
    move-exception p1

    .line 1013
    const-string v1, "orphaned workbench tasks not returned"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    :goto_2
    return-void
.end method

.method private returnedByWm(Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1891
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1892
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    .line 1893
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne p2, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 1892
    :goto_0
    return v1
.end method

.method private sendGroupFrame(Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 21

    .line 1615
    move-object/from16 v1, p0

    const-string v7, "TaskCoreShell"

    .line 1617
    nop

    .line 1618
    :try_start_0
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1619
    if-eqz p9, :cond_1

    :try_start_1
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/ColorSpace;->getId()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p8

    move-object/from16 v0, p9

    goto :goto_2

    .line 1642
    :catchall_0
    move-exception v0

    move-object/from16 v16, p8

    goto/16 :goto_7

    .line 1640
    :catch_0
    move-exception v0

    move-object/from16 v16, p8

    goto/16 :goto_5

    .line 1621
    :cond_1
    :goto_0
    if-nez p9, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, p9

    :goto_1
    move-object/from16 v3, p8

    :try_start_2
    invoke-static {v3, v2}, Ldev/duo/taskcore/WorkspaceShell;->toSrgb(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 1622
    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1623
    nop

    .line 1624
    move-object/from16 v16, v2

    .line 1626
    :goto_2
    :try_start_3
    iget-object v8, v1, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    .line 1627
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v18

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v19

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$1;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceShell$1;-><init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/Handler;JJ)V

    .line 1626
    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v20, v0

    invoke-static/range {v8 .. v20}, Ldev/duo/workspaceprobe/WorkspaceHome;->publish(Landroid/content/Context;Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;IIILandroid/os/ResultReceiver;)I

    move-result v0

    .line 1639
    if-gez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "workbench image publish rejected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1642
    :cond_3
    if-eqz v16, :cond_4

    goto :goto_6

    .line 1640
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1642
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1640
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1642
    :catchall_2
    move-exception v0

    move-object/from16 v3, p8

    :goto_3
    move-object/from16 v16, v3

    goto :goto_7

    .line 1640
    :catch_3
    move-exception v0

    move-object/from16 v3, p8

    :goto_4
    move-object/from16 v16, v3

    .line 1641
    :goto_5
    :try_start_4
    const-string v1, "workbench image send failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1642
    if-eqz v16, :cond_4

    :goto_6
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1643
    :cond_4
    return-void

    .line 1642
    :catchall_3
    move-exception v0

    :goto_7
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_5
    throw v0
.end method

.method private server()Ldev/duo/taskcore/WorkspaceProtocol$Client;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1149
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    return-object v0

    .line 1149
    :cond_0
    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$Refused;

    const-string v1, "WMS binder unavailable"

    invoke-direct {v0, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startAnimation(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2002
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 2005
    if-eqz v6, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda3;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, p3, v5, v0}, Ldev/duo/taskcore/WorkspaceShell;->guarded(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Play;)Z

    move-result p1

    return p1

    :cond_0
    move-object/from16 v5, p5

    .line 2007
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 2008
    if-eqz v6, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda4;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, p3, v5, v0}, Ldev/duo/taskcore/WorkspaceShell;->guarded(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Play;)Z

    move-result p1

    return p1

    .line 2010
    :cond_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pending:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldev/duo/taskcore/WorkspaceShell$Pending;

    .line 2011
    const/4 v9, 0x0

    if-nez v7, :cond_2

    return v9

    .line 2014
    :cond_2
    const/4 v10, 0x1

    new-array v8, v10, [Z

    aput-boolean v9, v8, v9

    .line 2016
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v5, p4

    :try_start_0
    invoke-direct/range {v1 .. v8}, Ldev/duo/taskcore/WorkspaceShell;->playPending(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;[Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2017
    :catch_0
    move-exception v0

    move-object v5, v6

    move-object p2, v0

    .line 2018
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending transition "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, " failed while playing"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "TaskCoreShell"

    invoke-static {v4, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2019
    aget-boolean p4, v8, v9

    if-nez p4, :cond_3

    .line 2020
    :try_start_1
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    const/4 p4, 0x0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, v5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2021
    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p3, v0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " could not be finished"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2023
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "playback failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v9, p1}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    .line 2024
    return v10
.end method

.method private stillLeased(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1915
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldev/duo/taskcore/TaskBinding;

    .line 1916
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v4, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1917
    if-eqz v2, :cond_0

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1918
    :cond_1
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " still multi-window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1919
    :cond_2
    goto :goto_0

    .line 1920
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    const-string p1, "; "

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static toSrgb(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/hardware/HardwareBuffer;
    .locals 6

    .line 1647
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    .line 1648
    invoke-static {p0, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1649
    if-eqz p1, :cond_2

    .line 1650
    const/4 v3, 0x1

    const-wide/16 v4, 0x300

    const/4 v2, 0x1

    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    .line 1652
    new-instance v2, Landroid/graphics/HardwareRenderer;

    invoke-direct {v2}, Landroid/graphics/HardwareRenderer;-><init>()V

    .line 1654
    :try_start_0
    new-instance v3, Landroid/graphics/RenderNode;

    const-string v4, "workbench-srgb"

    invoke-direct {v3, v4}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    .line 1655
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 1656
    invoke-virtual {v3}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 1657
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, v4, v1}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1658
    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 1659
    invoke-virtual {v2, v3}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 1660
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 1661
    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setWaitForPresent(Z)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    move-result v0

    .line 1662
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    .line 1665
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1666
    if-eqz v1, :cond_0

    .line 1667
    :try_start_1
    invoke-virtual {v1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    :try_start_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1670
    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 1671
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    .line 1672
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1667
    return-object v0

    .line 1668
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    throw v0

    .line 1666
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "workbench sRGB frame missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "workbench sRGB draw failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1670
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 1671
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    .line 1672
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1673
    throw v0

    .line 1649
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workbench capture not wrappable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private track(Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V
    .locals 2

    .line 1370
    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "startTransition returned null"

    invoke-virtual {p2, p1, v0}, Ldev/duo/taskcore/WorkspaceShell$Pending;->report(ZLjava/lang/String;)V

    return-void

    .line 1371
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pending:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda43;

    invoke-direct {v1, p0, p1, p2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda43;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1374
    return-void
.end method

.method private verifyAttach(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V
    .locals 11

    .line 1472
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    .line 1473
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1475
    :try_start_1
    iget-object v4, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldev/duo/taskcore/TaskBinding;

    .line 1476
    invoke-static {v5}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 1477
    :cond_1
    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v9, v5, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v9, v9, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1478
    if-eqz v7, :cond_7

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v9, v9, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v8, v9, :cond_2

    goto/16 :goto_4

    .line 1479
    :cond_2
    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->wcBounds:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->cfgWindow:Ljava/lang/reflect/Field;

    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->taskConfig:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 1480
    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v10, v2, [Ljava/lang/Object;

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x6

    if-ne v7, v9, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 1481
    :cond_3
    iget-object v7, v5, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    check-cast v7, Landroid/view/SurfaceControl;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    iget-object v9, v5, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    .line 1482
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 1483
    :cond_4
    invoke-virtual {v3, v7, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v7, v8, v8}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v5, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 1484
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v3, v7, v5, v6}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;II)V

    .line 1485
    goto/16 :goto_1

    .line 1482
    :cond_5
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " surface gone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1480
    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not applied yet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1478
    :cond_7
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vanished"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1474
    :catchall_0
    move-exception v0

    move-object p3, v0

    move-object v4, p2

    goto/16 :goto_6

    .line 1486
    :cond_8
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_b

    .line 1487
    :try_start_4
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1488
    iget-object p3, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldev/duo/taskcore/TaskBinding;

    invoke-static {p4}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget-object p4, p4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p4, p4, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1489
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "attached in another transition ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v6, p3}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1492
    :try_start_5
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1490
    return-void

    .line 1492
    :catch_0
    move-exception v0

    move-object p3, v0

    move-object v4, p2

    goto :goto_9

    :cond_b
    :try_start_6
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_6
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v0, v3, p3

    if-ltz v0, :cond_c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    return-void

    .line 1494
    :cond_c
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda7;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda7;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1495
    return-void

    .line 1474
    :catchall_1
    move-exception v0

    move-object v4, p2

    move-object p3, v0

    :goto_6
    :try_start_7
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_8
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p3
    :try_end_8
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1492
    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v4, p2

    :goto_8
    move-object p3, v0

    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "; task state unreadable: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    return-void
.end method

.method private verifyReturn(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V
    .locals 8

    .line 1500
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceShell;->stillLeased(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1501
    nop

    .line 1502
    const-string v2, "; "

    if-nez v0, :cond_6

    .line 1504
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    :try_start_1
    new-instance p4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p4}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1506
    :try_start_2
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceShell$Pending;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/TaskBinding;

    .line 1507
    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 1508
    :cond_1
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v6, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1509
    if-eqz v4, :cond_0

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 1510
    :cond_2
    invoke-direct {p0, v3, v4}, Ldev/duo/taskcore/WorkspaceShell;->returnedByWm(Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p4, v3, v4}, Ldev/duo/taskcore/WorkspaceShell;->restoreLeash(Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/TaskBinding;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " leash could not be restored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1511
    :cond_3
    goto :goto_0

    .line 1512
    :cond_4
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1513
    :try_start_3
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1505
    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_4
    invoke-virtual {p4}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p4, v0

    :try_start_5
    invoke-virtual {v1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1513
    :catch_0
    move-exception v0

    move-object p4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task state unreadable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returned in another transition ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    .line 1515
    return-void

    .line 1517
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-ltz v3, :cond_7

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    return-void

    .line 1518
    :cond_7
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda5;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1519
    return-void

    .line 1501
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "; task state unreadable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adoptRefused(I)V
    .locals 3

    .line 1767
    iget v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    .line 1768
    :cond_0
    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->revealTask(I)V

    .line 1769
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 1770
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adopt refused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    .line 1771
    :cond_1
    return-void
.end method

.method public attach(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 12

    .line 1268
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1269
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/SurfaceControl;

    .line 1270
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 1274
    :cond_0
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, v0, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1275
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctMode:Ljava/lang/reflect/Method;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBounds:Ljava/lang/reflect/Method;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v4, v4, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctHidden:Ljava/lang/reflect/Method;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctFocusable:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 1284
    iget-object v10, p0, Ldev/duo/taskcore/WorkspaceShell;->prepareOpenAnimation:Ljava/lang/reflect/Method;

    iget-object v11, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x0

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1286
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBack:Ljava/lang/reflect/Method;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1288
    if-nez v2, :cond_1

    .line 1290
    const-string v0, "TaskView surface not ready in prepareOpenAnimation"

    invoke-interface {p2, v1, v0}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1291
    return-void

    .line 1293
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->startTransition:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    filled-new-array {v4, v8, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$Pending;

    invoke-direct {v3, v1, v0, p2}, Ldev/duo/taskcore/WorkspaceShell$Pending;-><init>(ZLjava/util/List;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    invoke-direct {p0, v2, v3}, Ldev/duo/taskcore/WorkspaceShell;->track(Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    .line 1299
    goto :goto_1

    .line 1271
    :cond_2
    :goto_0
    const-string v0, "task changed before attach"

    invoke-interface {p2, v1, v0}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    .line 1297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TaskCoreShell"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1298
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1300
    :goto_1
    return-void
.end method

.method public attachContext(Landroid/content/Context;)V
    .locals 2

    .line 969
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    .line 971
    :try_start_0
    invoke-static {}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->connect()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    .line 972
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda36;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda37;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-virtual {p1, v0, v1}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->setSourceListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TaskCoreShell"

    const-string v1, "WMS binder unavailable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    :goto_0
    return-void
.end method

.method public bringToFront(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 9

    .line 1527
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1528
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    array-length v3, p2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p2, v4

    if-eqz v5, :cond_0

    iget-object v6, v5, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v7, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v6, v7, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v3, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne p2, v3, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    const-string p1, "empty workbench"

    invoke-interface {p4, v3, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void

    .line 1532
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x6

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/duo/taskcore/TaskBinding;

    .line 1534
    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->wctMode:Ljava/lang/reflect/Method;

    iget-object v7, v4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->wctBounds:Ljava/lang/reflect/Method;

    iget-object v6, v4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v8, v8, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->wctHidden:Ljava/lang/reflect/Method;

    iget-object v6, v4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->token:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    goto :goto_1

    .line 1539
    :cond_4
    new-instance p2, Ldev/duo/taskcore/WorkspaceShell$Pending;

    invoke-direct {p2, v0, v2, p4}, Ldev/duo/taskcore/WorkspaceShell$Pending;-><init>(ZLjava/util/List;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 1540
    iput-object p1, p2, Ldev/duo/taskcore/WorkspaceShell$Pending;->primary:Ldev/duo/taskcore/TaskBinding;

    .line 1541
    if-eqz p3, :cond_5

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->oneShotNew:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->mainExecutor:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v2, p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    .line 1542
    :cond_5
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->startTransition:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v5, 0x3

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    filled-new-array {p3, v1, v3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 1543
    iget-object p3, p2, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    if-eqz p3, :cond_7

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->oneShotToken:Ljava/lang/reflect/Field;

    iget-object v1, p2, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteHandler:Ljava/lang/Object;

    invoke-virtual {p3, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1544
    :cond_7
    invoke-direct {p0, p1, p2}, Ldev/duo/taskcore/WorkspaceShell;->track(Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    goto :goto_3

    .line 1545
    :catchall_0
    move-exception p1

    .line 1546
    const-string p2, "TaskCoreShell"

    const-string p3, "bring to front"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1547
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1549
    :goto_3
    return-void
.end method

.method public cancelLaunch(Landroid/os/IBinder;)V
    .locals 2

    .line 1051
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    .line 1052
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    if-ne v0, p1, :cond_1

    .line 1053
    iget p1, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    .line 1054
    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    .line 1055
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    .line 1057
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->revealTask(I)V

    .line 1059
    :cond_1
    return-void
.end method

.method public changed(Ldev/duo/taskcore/WorkspaceSession;)V
    .locals 2

    .line 2275
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2276
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    invoke-direct {p0, v0}, Ldev/duo/taskcore/WorkspaceShell;->placeOverlays(Landroid/view/SurfaceControl$Transaction;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_1

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

    .line 2278
    :cond_1
    :goto_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 2279
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->changed(Ldev/duo/taskcore/WorkspaceSession;)V

    .line 2280
    :cond_2
    return-void
.end method

.method public clearRecentsGroup()V
    .locals 2

    .line 1711
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 1712
    if-eqz v0, :cond_0

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda40;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda40;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1713
    :cond_0
    return-void
.end method

.method public createHost(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 3

    .line 1198
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 1199
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1200
    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda45;

    invoke-direct {v2, v1, v0, p2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda45;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 1201
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1, v2, v0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda46;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    return-void
.end method

.method public destroyHost(Ldev/duo/taskcore/TaskBinding;)V
    .locals 3

    .line 2202
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda1;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2203
    :cond_0
    iget-object v0, p1, Ldev/duo/taskcore/TaskBinding;->taskView:Ljava/lang/Object;

    .line 2204
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda2;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Object;Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2213
    return-void
.end method

.method public focus(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 7

    .line 2245
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    .line 2246
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->gate:Ldev/duo/taskcore/SystemGate;

    .line 2247
    const/4 v1, 0x1

    const-string v2, "TaskCoreShell"

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldev/duo/taskcore/SystemGate;->blocksActions()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ldev/duo/taskcore/SystemGate;->requiresClose()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2253
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "android.app.ActivityTaskManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2254
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setFocusedTask"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v5, v5, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    return v1

    .line 2256
    :catchall_0
    move-exception v1

    .line 2257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusedTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " failed"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2258
    return v0

    .line 2248
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " left to the system ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    return v1
.end method

.method public geometry()Ldev/duo/taskcore/Geometry;
    .locals 1

    .line 1119
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    return-object v0
.end method

.method public giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 1303
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ldev/duo/taskcore/WorkspaceShell;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 1304
    return-void
.end method

.method public giveBackInPlace(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ldev/duo/taskcore/WorkspaceSession$Done;",
            ")V"
        }
    .end annotation

    .line 1307
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Ldev/duo/taskcore/WorkspaceShell;->giveBack(Ljava/util/List;Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V

    .line 1308
    return-void
.end method

.method public host()Ldev/duo/taskcore/WorkspaceHost;
    .locals 1

    .line 1017
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    return-object v0
.end method

.method public inspect(I)Ldev/duo/taskcore/TaskBinding$Origin;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1123
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1124
    const-string v0, "task "

    if-eqz v7, :cond_b

    .line 1125
    :try_start_1
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/SurfaceControl;

    .line 1126
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1127
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v5, :cond_a

    .line 1128
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 1129
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoActivityType:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 1130
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1131
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 1133
    const-class v1, Landroid/app/TaskInfo;

    const-string v3, "supportsMultiWindow"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1136
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->taskListeners:Ljava/lang/reflect/Field;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1137
    if-nez v1, :cond_4

    .line 1138
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1139
    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v10, v1

    .line 1140
    const-string v1, "FullscreenTaskListener"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1141
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1

    :cond_2
    const-string v0, "?"

    :goto_2
    move-object v9, v0

    .line 1142
    new-instance v1, Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x0

    move v2, p1

    :try_start_2
    invoke-direct/range {v1 .. v10}, Ldev/duo/taskcore/TaskBinding$Origin;-><init>(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1140
    :cond_3
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1137
    :cond_4
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " owned by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1134
    :cond_5
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not support multi-window"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1131
    :cond_6
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has a parent task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1130
    :cond_7
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not on default display"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1129
    :cond_8
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not standard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1128
    :cond_9
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1127
    :cond_a
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no leash/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1124
    :cond_b
    move v2, p1

    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1143
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v2, p1

    .line 1144
    :goto_3
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inspect "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public install()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 210
    move-object/from16 v1, p0

    const-string v6, "TaskCoreShell"

    :try_start_0
    invoke-static {}, Ldev/duo/workspaceprobe/WorkspaceHome;->preload()V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "workbench image library not loaded at install"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_0
    invoke-direct {v1}, Ldev/duo/taskcore/WorkspaceShell;->installNotificationSources()V

    .line 213
    nop

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.wm.shell.taskview."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "TaskViewTransitions"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v0, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 215
    const-string v3, "com.android.wm.shell.ShellTaskOrganizer"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 216
    const-string v3, "com.android.wm.shell.transition.Transitions"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TaskView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TaskViewTaskController"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TaskViewController"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TaskView$Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->listenerClass:Ljava/lang/Class;

    .line 221
    const-string v2, "com.android.wm.shell.transition.Transitions$TransitionHandler"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerClass:Ljava/lang/Class;

    .line 222
    const-string v2, "com.android.wm.shell.transition.Transitions$TransitionObserver"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->observerClass:Ljava/lang/Class;

    .line 223
    const-string v2, "com.android.wm.shell.ShellTaskOrganizer$TaskListener"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 224
    const-string v3, "android.window.WindowContainerTransaction"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    .line 225
    const-string v3, "android.window.WindowContainerToken"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    .line 226
    const-class v15, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 227
    const-string v3, "android.window.TransitionInfo"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 228
    const-string v4, "android.window.TransitionInfo$Change"

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v4, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 230
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    filled-new-array {v11, v8, v10}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcNew:Ljava/lang/reflect/Constructor;

    .line 231
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    filled-new-array {v11, v10, v12}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvNew:Ljava/lang/reflect/Constructor;

    .line 232
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    new-array v11, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctNew:Ljava/lang/reflect/Constructor;

    .line 233
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v11, "getRunningTaskInfo"

    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    .line 234
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v11, "getTaskLeash"

    invoke-virtual {v8, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    .line 235
    const-string v5, "getTaskListener"

    filled-new-array {v15}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    .line 236
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 237
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v12, "addListenerForTaskId"

    invoke-virtual {v8, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->addListenerForTaskId:Ljava/lang/reflect/Method;

    .line 238
    const-string v5, "removeListener"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v8, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->removeListener:Ljava/lang/reflect/Method;

    .line 239
    const-string v2, "mTaskListeners"

    invoke-virtual {v8, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->taskListeners:Ljava/lang/reflect/Field;

    .line 240
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->taskListeners:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 241
    move v2, v11

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v13, Landroid/view/SurfaceControl$Transaction;

    const-class v14, Landroid/view/SurfaceControl$Transaction;

    const-class v16, Landroid/view/SurfaceControl;

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    move-object/from16 v17, v5

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Class;

    move-result-object v5

    const-string v11, "prepareOpenAnimation"

    invoke-virtual {v0, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->prepareOpenAnimation:Ljava/lang/reflect/Method;

    .line 243
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v11, "unregisterTaskView"

    invoke-virtual {v0, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->unregisterTaskView:Ljava/lang/reflect/Method;

    .line 244
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerClass:Ljava/lang/Class;

    filled-new-array {v5, v11, v12}, [Ljava/lang/Class;

    move-result-object v5

    const-string v11, "startTransition"

    invoke-virtual {v9, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->startTransition:Ljava/lang/reflect/Method;

    .line 245
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    const-string v11, "getPendingInfo"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->getPendingInfo:Ljava/lang/reflect/Method;

    .line 246
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    const-string v11, "mSurfaceControl"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcSurface:Ljava/lang/reflect/Field;

    .line 247
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-class v11, Ljava/util/concurrent/Executor;

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->listenerClass:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setListener"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->setListener:Ljava/lang/reflect/Method;

    .line 248
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v11, "release"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvRelease:Ljava/lang/reflect/Method;

    .line 249
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setWindowingMode"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctMode:Ljava/lang/reflect/Method;

    .line 250
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    const-class v12, Landroid/graphics/Rect;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setBounds"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctBounds:Ljava/lang/reflect/Method;

    .line 251
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setHidden"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctHidden:Ljava/lang/reflect/Method;

    .line 252
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setFocusable"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctFocusable:Ljava/lang/reflect/Method;

    .line 253
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setInterceptBackPressedOnTaskRoot"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctBack:Ljava/lang/reflect/Method;

    .line 254
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "setTaskTrimmableFromRecents"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctTrim:Ljava/lang/reflect/Method;

    .line 255
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v11, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11, v12}, [Ljava/lang/Class;

    move-result-object v11

    const-string v12, "reorder"

    invoke-virtual {v5, v12, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctReorder:Ljava/lang/reflect/Method;

    .line 256
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenClass:Ljava/lang/Class;

    const-string v11, "asBinder"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    .line 257
    const-class v5, Landroid/app/TaskInfo;

    const-string v11, "getWindowingMode"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    .line 258
    const-class v5, Landroid/app/TaskInfo;

    const-string v11, "getActivityType"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoActivityType:Ljava/lang/reflect/Method;

    .line 259
    const-class v5, Landroid/app/TaskInfo;

    const-string v11, "token"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    .line 260
    const-class v5, Landroid/app/TaskInfo;

    const-string v11, "displayId"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    .line 261
    const-class v5, Landroid/app/TaskInfo;

    const-string v12, "userId"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    .line 262
    const-class v5, Landroid/app/TaskInfo;

    const-string v12, "parentTaskId"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    .line 263
    const-class v5, Landroid/app/TaskInfo;

    const-string v12, "positionInParent"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoPosition:Ljava/lang/reflect/Field;

    .line 264
    const-string v5, "getChanges"

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->infoChanges:Ljava/lang/reflect/Method;

    .line 265
    const-class v5, Landroid/app/TaskInfo;

    const-string v12, "configuration"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->taskConfig:Ljava/lang/reflect/Field;

    .line 266
    const-class v5, Landroid/content/res/Configuration;

    const-string v12, "windowConfiguration"

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->cfgWindow:Ljava/lang/reflect/Field;

    .line 267
    const-string v5, "android.app.WindowConfiguration"

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v12, "getBounds"

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wcBounds:Ljava/lang/reflect/Method;

    .line 268
    new-array v5, v7, [Ljava/lang/Class;

    const-string v12, "getTaskInfo"

    invoke-virtual {v4, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    .line 269
    const-string v5, "getLeash"

    new-array v13, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    .line 270
    const-string v5, "com.android.wm.shell.transition.Transitions$TransitionFinishCallback"

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    .line 271
    const-string v14, "onTransitionFinished"

    invoke-virtual {v5, v14, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    .line 272
    const-string v5, "com.android.wm.shell.transition.OneShotRemoteHandler"

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 273
    const-string v13, "android.window.RemoteTransition"

    iget-object v14, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v13, v7, v14}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v13

    .line 274
    const-string v14, "com.android.wm.shell.common.ShellExecutor"

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v14, v7, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    filled-new-array {v14, v13}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    iput-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotNew:Ljava/lang/reflect/Constructor;

    .line 275
    const-string v13, "mTransition"

    invoke-virtual {v5, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    iput-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotToken:Ljava/lang/reflect/Field;

    .line 276
    const-string v13, "mMainExecutor"

    invoke-virtual {v9, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    iput-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->mainExecutor:Ljava/lang/reflect/Field;

    iget-object v13, v1, Ldev/duo/taskcore/WorkspaceShell;->mainExecutor:Ljava/lang/reflect/Field;

    invoke-virtual {v13, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 277
    const-class v13, Landroid/os/IBinder;

    const-class v14, Landroid/view/SurfaceControl$Transaction;

    const-class v15, Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    .line 278
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v13, v3, v14, v15, v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 277
    const-string v13, "startAnimation"

    invoke-virtual {v5, v13, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotStart:Ljava/lang/reflect/Method;

    .line 279
    const-class v16, Landroid/os/IBinder;

    const-class v18, Landroid/view/SurfaceControl$Transaction;

    const-class v19, Landroid/view/SurfaceControl$Transaction;

    const-class v20, Landroid/os/IBinder;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    .line 280
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v21

    move-object/from16 v17, v3

    filled-new-array/range {v16 .. v21}, [Ljava/lang/Class;

    move-result-object v2

    .line 279
    move-object/from16 v13, v17

    const-string v3, "mergeAnimation"

    invoke-virtual {v5, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotMerge:Ljava/lang/reflect/Method;

    .line 281
    const-class v2, Landroid/os/IBinder;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v14, Landroid/view/SurfaceControl$Transaction;

    filled-new-array {v2, v3, v14}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onTransitionConsumed"

    invoke-virtual {v5, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->oneShotConsumed:Ljava/lang/reflect/Method;

    .line 283
    const-string v2, "com.android.wm.shell.transition.Transitions$RequestResult"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerClass:Ljava/lang/Class;

    filled-new-array {v3, v5}, [Ljava/lang/Class;

    move-result-object v3

    .line 284
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->requestResultNew:Ljava/lang/reflect/Constructor;

    .line 285
    const-string v2, "isKeyguardGoingAway"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v13, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->infoKeyguardGoingAway:Ljava/lang/reflect/Method;

    .line 286
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "addHandler"

    invoke-virtual {v9, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 287
    const-string v3, "mTaskOrganizer"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v5, "mTransitions"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 288
    const-string v14, "mShellExecutor"

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 289
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v15, v0

    :goto_1
    if-ge v7, v15, :cond_0

    move-object/from16 v17, v0

    aget-object v0, v17, v7

    .line 293
    move-object/from16 v18, v2

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda48;

    move/from16 v19, v7

    move-object v7, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v14

    move-object v14, v4

    move-object/from16 v4, v18

    move/from16 v18, v19

    move/from16 v19, v15

    const/4 v15, 0x1

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda48;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-interface {v7, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 292
    add-int/lit8 v7, v18, 0x1

    move-object v0, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v14

    move-object v14, v5

    move-object v5, v0

    move-object/from16 v0, v17

    move/from16 v15, v19

    goto :goto_1

    .line 315
    :cond_0
    move-object v14, v4

    const/4 v15, 0x1

    const-string v0, "com.android.wm.shell.recents.RecentTasksController"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 317
    iget-object v7, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v7, v5}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v7, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda59;

    invoke-direct {v7, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda59;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v5, v7}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 316
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 323
    :cond_1
    const-string v2, "com.android.wm.shell.shared.GroupedTaskInfo"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 324
    const-string v3, "com.android.wm.shell.shared.split.SplitBounds"

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 325
    const-string v5, "getTaskInfoList"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 326
    const-class v5, Ljava/util/List;

    filled-new-array {v5, v3}, [Ljava/lang/Class;

    move-result-object v5

    const-string v7, "forMultipleSplitTasks"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 327
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    const-class v15, Ljava/util/List;

    move-object/from16 v17, v12

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v7, v15, v12}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 328
    const-string v5, "notifyRecentTasksChanged"

    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 329
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 330
    iput-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->recentsChanged:Ljava/lang/reflect/Method;

    .line 331
    const-string v5, "com.android.systemui.LauncherProxyService"

    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v5, v7, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 332
    const-string v7, "mLauncherProxy"

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v1, Ldev/duo/taskcore/WorkspaceShell;->launcherProxyField:Ljava/lang/reflect/Field;

    .line 333
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v5

    array-length v7, v5

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v7, :cond_2

    aget-object v15, v5, v12

    .line 334
    move-object/from16 v18, v5

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v5, v15}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v15, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda60;

    invoke-direct {v15, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda60;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v5, v15}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 333
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v18

    goto :goto_3

    .line 340
    :cond_2
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v12, v15}, [Ljava/lang/Class;

    move-result-object v7

    const-string v12, "getRecentTasks"

    invoke-virtual {v0, v12, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v5, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda61;

    invoke-direct {v5, v1, v4, v3, v2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda61;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 382
    const-string v0, "com.android.wm.shell.recents.RecentsTransitionHandler$RecentsController"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 384
    const-string v2, "com.android.wm.shell.recents.RecentsTransitionHandler"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 385
    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v4, Landroid/os/IBinder;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getFinishMergeTransaction"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda62;

    invoke-direct {v4, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda62;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 390
    const-string v3, "com.android.wm.shell.multitasking.miuifreeform.MiuiFreeformModeController"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 391
    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v5, Landroid/view/SurfaceControl$Transaction;

    filled-new-array {v13, v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v7, "adjustRecentMiniSurfaceIfNeed"

    invoke-virtual {v3, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda63;

    invoke-direct {v4, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda63;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 397
    invoke-direct {v1, v2, v0, v13, v14}, Ldev/duo/taskcore/WorkspaceShell;->installGroupMotion(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 398
    const-string v2, "mAwaitingCancelCompletion"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "mFinishCB"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 399
    const-string v3, "mKeyguardLocked"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 400
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 401
    const-string v5, "isSyntheticTransition"

    const/4 v7, 0x0

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 402
    iget-object v12, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iget-object v15, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    .line 403
    const-string v1, "com.android.internal.os.IResultReceiver"

    invoke-static {v1, v7, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v7, Ljava/lang/String;

    filled-new-array {v13, v14, v1, v7}, [Ljava/lang/Class;

    move-result-object v1

    .line 402
    const-string v7, "finishInner"

    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v12, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v7

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda64;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda64;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 403
    invoke-interface {v7, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 416
    :try_start_1
    const-string v0, "com.android.wm.shell.multiplesplit.MultipleSplitRootTaskOrganizer"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v0, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 417
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-string v3, "startMultipleSplits"

    const-class v4, Landroid/os/Bundle;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda65;

    invoke-direct {v2, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda65;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    goto :goto_4

    .line 435
    :catch_1
    move-exception v0

    .line 436
    const-string v2, "multi-split launch hook unavailable: recents card relies on member to-front"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    :goto_4
    const-string v0, "com.android.wm.shell.RootTaskDisplayAreaOrganizer"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v0, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 440
    const-string v2, "android.window.DisplayAreaInfo"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 441
    invoke-virtual {v2, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 442
    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v5, Landroid/view/SurfaceControl;

    filled-new-array {v2, v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v6, "onDisplayAreaAppeared"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v4

    new-instance v5, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda66;

    invoke-direct {v5, v1, v3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda66;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;)V

    invoke-interface {v4, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 447
    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-string v5, "onDisplayAreaVanished"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v4, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda67;

    invoke-direct {v2, v1, v3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda67;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 456
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v3, "getCurrentBoundsOnScreen"

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda49;

    invoke-direct {v2, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda49;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 460
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Rect;

    filled-new-array {v0, v2}, [Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setTaskBounds"

    invoke-virtual {v10, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 461
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v3, "mTaskViewController"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v4, "mTaskViewTaskController"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 462
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 463
    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-string v5, "onLocationChanged"

    const/4 v7, 0x0

    new-array v6, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->tvClass:Ljava/lang/Class;

    const-class v6, Landroid/view/SurfaceHolder;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v7, v10, v11}, [Ljava/lang/Class;

    move-result-object v6

    .line 464
    const-string v7, "surfaceChanged"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/reflect/Method;

    move-result-object v4

    .line 463
    const/4 v5, 0x0

    :goto_5
    const/4 v6, 0x2

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    .line 465
    iget-object v7, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v7, v6}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v6

    new-instance v7, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda50;

    invoke-direct {v7, v1, v0, v2, v3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda50;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v6, v7}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 463
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 473
    :cond_3
    const-string v0, "android.window.TransitionRequestInfo"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v0, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 474
    const-string v2, "getTriggerTask"

    new-array v3, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getType"

    new-array v4, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 475
    const-class v4, Landroid/app/TaskInfo;

    const-string v5, "launchCookies"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 476
    iput-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->reqTrigger:Ljava/lang/reflect/Method;

    .line 477
    iput-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->launchCookies:Ljava/lang/reflect/Field;

    .line 478
    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v6, Landroid/os/IBinder;

    filled-new-array {v6, v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v6, "requestStartTransition"

    invoke-virtual {v9, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v5, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda51;

    invoke-direct {v5, v1, v3, v2, v4}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda51;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-interface {v0, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 555
    const-class v0, Landroid/app/TaskInfo;

    const-string v2, "isFocused"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 556
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v3, Landroid/app/ActivityManager$RunningTaskInfo;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v5, "onTaskInfoChanged"

    invoke-virtual {v8, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda52;

    invoke-direct {v3, v1, v0, v4}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda52;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 573
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    const-class v2, Landroid/app/ActivityManager$RunningTaskInfo;

    const-class v3, Landroid/view/SurfaceControl;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onTaskAppeared"

    invoke-virtual {v8, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda53;

    invoke-direct {v2, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda53;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 581
    const-string v0, "com.android.wm.shell.pip2.phone.PipTransition"

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v0, v7, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 582
    const-string v2, "android.window.TransitionRequestInfo$PipChange"

    iget-object v3, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v2, v7, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 583
    const-string v3, "com.android.wm.shell.pip2.phone.PipTransitionState"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    invoke-static {v3, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 584
    new-array v4, v7, [Ljava/lang/Class;

    move-object/from16 v5, v17

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 585
    const-string v5, "mPipTransitionState"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 586
    const-string v6, "getState"

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 587
    const-string v8, "getPinnedTaskLeash"

    new-array v9, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 588
    const-class v7, Landroid/os/IBinder;

    filled-new-array {v7, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v7, "getEnterPipTransaction"

    invoke-virtual {v0, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 589
    iget-object v7, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v7, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v7, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda54;

    invoke-direct {v7, v1, v4, v5}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda54;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-interface {v2, v7}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 601
    const-string v2, "android.window.WindowOrganizer"

    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v2, v7, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-class v4, Landroid/os/IBinder;

    iget-object v5, v1, Ldev/duo/taskcore/WorkspaceShell;->wctClass:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v4

    .line 602
    const-string v5, "finishTransition"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 603
    iget-object v4, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    invoke-interface {v4, v2}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda55;

    invoke-direct {v4, v1, v6, v3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda55;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {v2, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 615
    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->xposed:Lio/github/libxposed/api/XposedInterface;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/os/Bundle;

    filled-new-array {v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onPipTransitionStateChanged"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda56;

    invoke-direct {v2, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda56;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 620
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda57;

    invoke-direct {v3, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda57;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    .line 621
    iget-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell;->observerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda58;

    invoke-direct {v3, v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda58;-><init>(Ldev/duo/taskcore/WorkspaceShell;)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, Ldev/duo/taskcore/WorkspaceShell;->observerProxy:Ljava/lang/Object;

    .line 655
    return-void
.end method

.method public isolate(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 8

    .line 2263
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 2264
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 2265
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 2266
    const-string v3, ":"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 2267
    :cond_0
    move p1, v4

    :goto_0
    array-length v5, p2

    if-ge p1, v5, :cond_2

    add-int/lit8 v5, p1, 0x1

    aget-object v6, p2, p1

    if-nez v6, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, p1

    iget-object v7, v7, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v7, v7, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object p1, p2, p1

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v2, v5

    move p1, v5

    goto :goto_0

    .line 2268
    :cond_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2269
    if-nez v0, :cond_3

    const-string p1, "no events"

    invoke-interface {p3, v4, p1}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    return-void

    .line 2270
    :cond_3
    new-instance p2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1, v1, p3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    invoke-interface {v0, v2, p2}, Ldev/duo/taskcore/WorkspaceShell$Events;->isolate([Ljava/lang/String;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 2271
    return-void
.end method

.method synthetic lambda$attachContext$35$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Runnable;)V
    .locals 1

    .line 972
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$createHost$45$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1209
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "onInitialized"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    move p5, v2

    goto :goto_1

    :sswitch_1
    const-string v0, "hashCode"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "equals"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "onTaskRemovalStarted"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "toString"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x4

    goto :goto_1

    :goto_0
    const/4 p5, -0x1

    :goto_1
    packed-switch p5, :pswitch_data_0

    goto :goto_3

    .line 1219
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TaskCoreListener#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p2, p2, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1218
    :pswitch_1
    aget-object p1, p6, v2

    if-ne p4, p1, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1217
    :pswitch_2
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1212
    :pswitch_3
    aget-object p1, p6, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1213
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 1214
    if-eqz p3, :cond_2

    new-instance p4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda23;

    invoke-direct {p4, p3, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda23;-><init>(Ldev/duo/taskcore/WorkspaceShell$Events;I)V

    invoke-virtual {p2, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1210
    :pswitch_4
    const-string p2, "initialized"

    invoke-interface {p1, v1, p2}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1222
    :cond_2
    :goto_3
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_4
        -0x68b29be7 -> :sswitch_3
        -0x4d378041 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x661c2f75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$createHost$47$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/TaskBinding;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;)V
    .locals 4

    .line 1203
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->tvcNew:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1204
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->tvNew:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1205
    iput-object v0, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    .line 1206
    iput-object v1, p1, Ldev/duo/taskcore/TaskBinding;->taskView:Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v3, v3, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->listenerClass:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0, p2, p3, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda12;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;Ldev/duo/taskcore/TaskBinding;)V

    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    .line 1224
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->setListener:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Ldev/duo/fold/g$b$$ExternalSyntheticLambda1;-><init>(Landroid/os/Handler;)V

    filled-new-array {v3, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p3, p1, v1}, Ldev/duo/taskcore/WorkspaceHost;->addTask(Ldev/duo/taskcore/TaskBinding;Landroid/view/View;)V

    .line 1226
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda13;

    invoke-direct {v0, p2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda13;-><init>(Ldev/duo/taskcore/WorkspaceSession$Done;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    goto :goto_0

    .line 1227
    :catchall_0
    move-exception p3

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskCoreShell"

    invoke-static {v0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    const/4 p1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ldev/duo/taskcore/WorkspaceSession$Done;->done(ZLjava/lang/String;)V

    .line 1231
    :goto_0
    return-void
.end method

.method synthetic lambda$destroyHost$59$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/TaskBinding;)V
    .locals 1

    .line 2202
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$destroyHost$60$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Ldev/duo/taskcore/TaskBinding;)V
    .locals 2

    .line 2206
    if-eqz p1, :cond_0

    .line 2207
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->tvRelease:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2210
    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskView release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskCoreShell"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    .line 2211
    :goto_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {p1, p2}, Ldev/duo/taskcore/WorkspaceHost;->removeTask(Ldev/duo/taskcore/TaskBinding;)V

    .line 2212
    return-void
.end method

.method synthetic lambda$install$0$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 294
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 295
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p5

    .line 296
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    const-string v2, "TaskCoreShell"

    if-eqz v1, :cond_0

    const-string p1, "second TaskViewTransitions ignored"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 297
    :cond_0
    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    .line 298
    invoke-virtual {p1, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    .line 299
    invoke-virtual {p2, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    .line 302
    :try_start_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "registerObserver"

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->observerClass:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->observerProxy:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "transition observer not registered: members may fall out of their cards"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    :goto_0
    :try_start_1
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->transitions:Ljava/lang/Object;

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->handlerProxy:Ljava/lang/Object;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "transition handler not added: external launches cannot be claimed"

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :goto_1
    invoke-virtual {p4, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 309
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "getLooper"

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p3, p4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array p4, v1, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "captured TaskViewTransitions "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-object v0
.end method

.method synthetic lambda$install$1$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 319
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->recents:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->recents:Ljava/lang/Object;

    const-string p1, "TaskCoreShell"

    const-string v1, "captured RecentTasksController"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    return-object v0
.end method

.method synthetic lambda$install$10$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 458
    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    return-object p1
.end method

.method synthetic lambda$install$11$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->owned:Ljava/util/Map;

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 467
    if-nez v0, :cond_0

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 468
    :cond_0
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$install$12$dev-duo-taskcore-WorkspaceShell(I)V
    .locals 2

    .line 543
    iget v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptDelivered:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " never appeared: not adopted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskCoreShell"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->adoptRefused(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$install$13$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 479
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 480
    if-eqz v0, :cond_16

    .line 481
    const/4 v1, 0x1

    invoke-interface {p4, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 482
    invoke-interface {p4, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 483
    iget-wide v4, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz v2, :cond_5

    if-eq p1, v1, :cond_0

    if-ne p1, v5, :cond_5

    :cond_0
    if-eqz p2, :cond_5

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_5

    .line 484
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    iget-wide v6, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    invoke-interface {p4, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-virtual {v2, v6, v7, v8}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->lookupSource(JLandroid/os/IBinder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    .line 485
    iget-object v7, v6, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    if-eqz v7, :cond_1

    iget-object v7, v6, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iget-object v7, v7, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v9, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_2

    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {p0, v6}, Ldev/duo/taskcore/WorkspaceShell;->onSourceEvent(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    .line 487
    iget v7, v6, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 489
    :cond_3
    iget v6, v6, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    if-ne v6, v4, :cond_4

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 490
    :cond_4
    goto :goto_0

    .line 492
    :cond_5
    const-string v2, "TaskCoreShell"

    if-eq p1, v1, :cond_6

    if-ne p1, v5, :cond_7

    :cond_6
    if-eqz p2, :cond_7

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget v7, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 493
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {p4, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "follow-up launch of task "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " kept hidden until it is in its card"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 497
    :cond_7
    if-ne p1, v4, :cond_8

    if-eqz p2, :cond_8

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_8

    iget v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v4}, Ldev/duo/taskcore/WorkspaceShell;->isOwnedTask(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 500
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->memberToBack(I)V

    goto/16 :goto_5

    .line 501
    :cond_8
    if-eq p1, v1, :cond_9

    if-ne p1, v5, :cond_a

    :cond_9
    if-eqz p2, :cond_a

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_a

    iget v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v4}, Ldev/duo/taskcore/WorkspaceShell;->isOwnedTask(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 503
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->memberToFront(I)V

    goto/16 :goto_5

    .line 504
    :cond_a
    if-eq p1, v1, :cond_b

    if-ne p1, v5, :cond_16

    :cond_b
    if-eqz p2, :cond_16

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_16

    .line 505
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    .line 506
    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 507
    const/4 v5, 0x0

    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 510
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {p4, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 512
    iput-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    .line 513
    iput-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    .line 514
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    .line 515
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_16

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->deliverLaunched(I)V

    goto/16 :goto_5

    .line 517
    :cond_c
    const-class p3, Landroid/app/TaskInfo;

    const-string v4, "getActivityType"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {p3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 518
    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_d

    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 519
    :cond_d
    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_e

    iget-object v4, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_e
    move-object v4, v5

    .line 520
    :goto_1
    const-class v6, Landroid/app/TaskInfo;

    const-string v7, "supportsMultiWindow"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v6

    .line 521
    const-class v7, Landroid/app/TaskInfo;

    const-string v8, "isTopActivityTransparent"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v7

    .line 522
    const-string v8, "non-member "

    const-string v9, " task "

    if-ne p3, v1, :cond_f

    if-nez v6, :cond_f

    if-eqz v7, :cond_f

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->acceptsOverlay()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is a non-resizable dialog: shown inside the main area"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    invoke-interface {p4, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 529
    :cond_f
    if-ne p3, v1, :cond_10

    if-nez v6, :cond_10

    .line 531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " cannot be multi-window: not adopted"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->interstitial(I)V

    goto/16 :goto_5

    .line 533
    :cond_10
    if-ne p3, v1, :cond_12

    iget v5, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v0, v5, v4}, Ldev/duo/taskcore/WorkspaceShell$Events;->adopt(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 534
    iput-boolean v3, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptDelivered:Z

    .line 536
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    .line 537
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {p4, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/IBinder;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " opened: adopting into the main area"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 542
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->deliverAdopt(I)V

    goto :goto_2

    .line 543
    :cond_11
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance p3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda9;-><init>(Ldev/duo/taskcore/WorkspaceShell;I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    :goto_2
    goto :goto_5

    :cond_12
    const-string v2, "open"

    const-string v3, "to-front"

    const-string v4, "external "

    if-eq p3, v1, :cond_14

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne p1, v1, :cond_13

    goto :goto_3

    :cond_13
    move-object v2, v3

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " system task "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->systemSurface(Ljava/lang/String;)V

    goto :goto_5

    .line 547
    :cond_14
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-ne p1, v1, :cond_15

    goto :goto_4

    :cond_15
    move-object v2, v3

    :goto_4
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    .line 552
    :cond_16
    :goto_5
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$install$14$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 557
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 558
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 559
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 560
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 561
    iget v3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v6, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Ldev/duo/taskcore/WorkspaceShell$Events;->taskChanged(ILjava/lang/Object;II)V

    .line 562
    :cond_0
    if-eqz v1, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_7

    .line 563
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 564
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedCookie:Landroid/os/IBinder;

    .line 565
    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v2

    .line 566
    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    .line 567
    :cond_4
    iget p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p2, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    if-ne p1, p2, :cond_5

    goto :goto_1

    .line 568
    :cond_5
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->overlays:Ljava/util/Map;

    iget p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 569
    :cond_6
    iget p1, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ldev/duo/taskcore/WorkspaceShell$Events;->focused(ILjava/lang/Object;)V

    .line 571
    :cond_7
    :goto_1
    return-object v0
.end method

.method synthetic lambda$install$15$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 574
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 575
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 576
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p0, Ldev/duo/taskcore/WorkspaceShell;->awaitedTask:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, v1}, Ldev/duo/taskcore/WorkspaceShell;->deliverLaunched(I)V

    .line 577
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptTask:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Ldev/duo/taskcore/WorkspaceShell;->adoptDelivered:Z

    if-nez v1, :cond_1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->deliverAdopt(I)V

    .line 578
    :cond_1
    return-object v0
.end method

.method synthetic lambda$install$16$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 590
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 591
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/duo/taskcore/TaskBinding;

    iget-object v4, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v4, v4, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v4, v0, :cond_0

    .line 593
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->nativePipState:Ljava/lang/Object;

    .line 594
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->pipSources:Ljava/util/Map;

    invoke-interface {p3, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    if-eqz p2, :cond_1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    iget-wide v1, v3, Ldev/duo/taskcore/TaskBinding;->epoch:J

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p2, v1, v2, p1, v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->pipStarting(JILjava/lang/Object;)V

    .line 598
    :cond_1
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$install$18$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pipSources:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/TaskBinding;

    .line 605
    if-eqz v0, :cond_0

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->nativePipState:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 606
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->nativePipState:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 607
    :goto_1
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p3

    .line 608
    if-eqz v0, :cond_3

    .line 609
    if-eqz p1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v1, p2}, Ldev/duo/taskcore/WorkspaceHost;->belowSystemPip(Landroid/view/SurfaceControl;)V

    .line 610
    :cond_2
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 611
    if-eqz p2, :cond_3

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;

    invoke-direct {v2, p2, v0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda33;-><init>(Ldev/duo/taskcore/WorkspaceShell$Events;Ldev/duo/taskcore/TaskBinding;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    :cond_3
    return-object p3
.end method

.method synthetic lambda$install$19$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 616
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 617
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ldev/duo/taskcore/WorkspaceHost;->belowSystemPip(Landroid/view/SurfaceControl;)V

    .line 618
    :cond_0
    return-object v0
.end method

.method synthetic lambda$install$2$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 335
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 336
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->launcherService:Ljava/lang/Object;

    .line 337
    return-object v0
.end method

.method synthetic lambda$install$20$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 620
    invoke-direct {p0, p2, p3}, Ldev/duo/taskcore/WorkspaceShell;->onHandler(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$install$22$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 622
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "onTransitionMerged"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "onTransitionReady"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "hashCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "equals"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "onTransitionFinished"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "toString"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    goto :goto_1

    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 652
    return-object v0

    .line 651
    :pswitch_0
    const-string p1, "TaskCoreTransitionObserver"

    return-object p1

    .line 650
    :pswitch_1
    aget-object p2, p3, v4

    if-ne p2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 649
    :pswitch_2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 632
    :pswitch_3
    aget-object p1, p3, v4

    check-cast p1, Landroid/os/IBinder;

    .line 633
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->keyguardExit:Landroid/os/IBinder;

    if-ne p1, p2, :cond_2

    .line 634
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->keyguardExit:Landroid/os/IBinder;

    .line 635
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 636
    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ldev/duo/taskcore/WorkspaceShell$Events;->keyguardExitAborted()V

    .line 638
    :cond_2
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->overlayClaims:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 641
    if-eqz p2, :cond_5

    iget-boolean v1, p2, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p2, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    if-nez v1, :cond_5

    .line 642
    iget-boolean v1, p2, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    if-nez v1, :cond_3

    aget-object p3, p3, v3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    if-eqz p3, :cond_4

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    invoke-interface {p3}, Ldev/duo/taskcore/WorkspaceShell$Events;->recentsReturned()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    iput-boolean v3, p2, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    .line 644
    :cond_5
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->finishTransactionOf(Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    .line 645
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;)V

    .line 646
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 647
    return-object v0

    .line 626
    :pswitch_4
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->mergedInto:Ljava/util/Map;

    aget-object p2, p3, v3

    check-cast p2, Landroid/os/IBinder;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    aget-object p2, p3, v4

    check-cast p2, Landroid/os/IBinder;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 628
    if-eqz p1, :cond_7

    iget-object p2, p1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    aget-object v1, p3, v4

    if-eq p2, v1, :cond_6

    iget-object p2, p1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishToken:Landroid/os/IBinder;

    aget-object v1, p3, v4

    if-ne p2, v1, :cond_7

    :cond_6
    aget-object p2, p3, v3

    check-cast p2, Landroid/os/IBinder;

    iput-object p2, p1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishToken:Landroid/os/IBinder;

    .line 629
    :cond_7
    return-object v0

    .line 623
    :pswitch_5
    aget-object p1, p3, v4

    check-cast p1, Landroid/os/IBinder;

    aget-object p2, p3, v3

    aget-object v2, p3, v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    aget-object p3, p3, v1

    check-cast p3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, p2, v2, p3}, Ldev/duo/taskcore/WorkspaceShell;->onTransitionReady(Landroid/os/IBinder;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 624
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_5
        -0x5befe2da -> :sswitch_4
        -0x4d378041 -> :sswitch_3
        0x8cdac1b -> :sswitch_2
        0x3486d96f -> :sswitch_1
        0x53d3dce0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$install$3$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 341
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 342
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 343
    if-eqz v2, :cond_11

    if-gtz v4, :cond_0

    goto/16 :goto_9

    .line 345
    :cond_0
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 346
    const v6, 0x7fffffff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 347
    invoke-interface {v1, v5}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    move-object v5, v1

    .line 349
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 350
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 352
    new-array v12, v3, [Ljava/lang/Object;

    move-object/from16 v13, p1

    invoke-virtual {v13, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 353
    nop

    .line 354
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v14, v3

    move v15, v14

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 355
    move-object/from16 v11, v16

    check-cast v11, Landroid/app/TaskInfo;

    .line 356
    move/from16 v16, v3

    iget v3, v11, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 357
    nop

    .line 358
    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ldev/duo/taskcore/TaskBinding;

    move-object/from16 v17, v1

    iget-object v1, v10, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    move-object/from16 v18, v3

    iget v3, v11, Landroid/app/TaskInfo;->taskId:I

    if-ne v1, v3, :cond_2

    invoke-static {v10}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v14, v10

    :cond_2
    move-object/from16 v1, v17

    move-object/from16 v3, v18

    goto :goto_3

    .line 359
    :cond_3
    move-object/from16 v17, v1

    if-eqz v14, :cond_5

    iget-object v1, v14, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, v14, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v1, v1, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    iget-object v3, v0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    .line 360
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    if-eq v1, v3, :cond_4

    goto :goto_4

    .line 361
    :cond_4
    iget v1, v11, Landroid/app/TaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    nop

    .line 363
    const/4 v14, 0x1

    goto :goto_5

    .line 360
    :cond_5
    :goto_4
    return-object v5

    .line 363
    :cond_6
    move-object/from16 v17, v1

    const/4 v15, 0x1

    .line 364
    :goto_5
    move/from16 v3, v16

    move-object/from16 v1, v17

    goto :goto_2

    .line 366
    :cond_7
    move-object/from16 v17, v1

    move/from16 v16, v3

    if-eqz v14, :cond_8

    if-eqz v15, :cond_8

    return-object v5

    .line 367
    :cond_8
    if-eqz v14, :cond_9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_9
    move/from16 v3, v16

    move-object/from16 v1, v17

    goto/16 :goto_1

    .line 369
    :cond_a
    move-object/from16 v17, v1

    move/from16 v16, v3

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_b

    return-object v5

    .line 370
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/TaskInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 372
    :cond_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell;->recentsRects:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v3, v0, v2, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 375
    nop

    .line 376
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v3, v16

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 377
    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 378
    :cond_d
    if-nez v3, :cond_e

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 379
    :cond_e
    :goto_8
    goto :goto_7

    .line 380
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    move/from16 v2, v16

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    :cond_10
    return-object v1

    .line 343
    :cond_11
    :goto_9
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$install$4$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 386
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 387
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;)V

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 388
    :cond_0
    return-object p1
.end method

.method synthetic lambda$install$5$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 392
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 393
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v2}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;)V

    .line 394
    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 395
    return-object v0
.end method

.method synthetic lambda$install$6$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 404
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    .line 405
    const/4 v1, 0x3

    invoke-interface {p5, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p5, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    const-string v3, "requested"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "requested-merge-fenced"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 409
    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p4, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 410
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    iget-wide p2, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    invoke-virtual {p1, p2, p3}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->userSelected(J)V

    .line 411
    :cond_1
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$install$7$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 419
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 420
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 421
    invoke-static {v3}, Ldev/duo/taskcore/WorkspaceShell;->bundleTaskIds(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v4

    .line 424
    if-nez v3, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const-string v5, "multiple_launch_way"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 425
    :goto_0
    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    const-class v0, Landroid/app/ActivityOptions;

    const-string v5, "getRemoteTransition"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v5, Landroid/app/ActivityOptions;

    const-class v6, Landroid/os/Bundle;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    .line 427
    const-string v7, "fromBundle"

    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    const-string v3, "recents card"

    invoke-interface {v1, v3, v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->resumeRequested(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workbench card restore "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " remote="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskCoreShell"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-object v6

    .line 433
    :cond_2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$install$8$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 443
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 444
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    .line 445
    :cond_0
    return-object v0
.end method

.method synthetic lambda$install$9$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 448
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 449
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    .line 450
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 451
    if-eqz p1, :cond_0

    const-string v0, "display area vanished"

    invoke-interface {p1, v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    .line 453
    :cond_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installGroupMotion$23$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 667
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 668
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->canAnimateGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 669
    :cond_0
    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3}, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;Ljava/util/List;)V

    .line 670
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->publishGroupFrame()V

    .line 671
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 672
    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceHost;->beginSystemAnimation()V

    .line 673
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    iget-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    if-nez v2, :cond_1

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->abandonSystemAnimation()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 673
    :cond_1
    return-object p1

    .line 674
    :catchall_0
    move-exception p1

    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    if-nez v2, :cond_2

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v0}, Ldev/duo/taskcore/WorkspaceHost;->abandonSystemAnimation()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    :cond_2
    throw p1

    .line 668
    :cond_3
    :goto_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installGroupMotion$25$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 679
    if-eqz v0, :cond_1

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 680
    :cond_0
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->controller:Ljava/lang/Object;

    .line 681
    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->info:Ljava/lang/Object;

    .line 682
    const/4 p1, 0x1

    invoke-interface {p4, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->start:Landroid/view/SurfaceControl$Transaction;

    .line 683
    iget-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->controller:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 684
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->loader:Ljava/lang/ClassLoader;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;

    invoke-direct {v2, v0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;-><init>(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;)V

    invoke-static {v1, p3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    .line 703
    iget-object p3, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->controller:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 704
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->buildingGroup:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 705
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->buildingGroup:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->start:Landroid/view/SurfaceControl$Transaction;

    .line 705
    return-object p2

    .line 706
    :catchall_0
    move-exception p2

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->buildingGroup:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iput-object p1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->start:Landroid/view/SurfaceControl$Transaction;

    throw p2

    .line 679
    :cond_1
    :goto_0
    invoke-interface {p4}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installGroupMotion$26$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-interface {v3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v4

    .line 718
    iget-object v5, v0, Ldev/duo/taskcore/WorkspaceShell;->buildingGroup:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 719
    if-nez v5, :cond_0

    return-object v4

    .line 720
    :cond_0
    iget-object v6, v0, Ldev/duo/taskcore/WorkspaceShell;->changeTask:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 721
    if-nez v6, :cond_1

    return-object v4

    .line 722
    :cond_1
    nop

    .line 723
    iget-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->members:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/duo/taskcore/TaskBinding;

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->lease:Ldev/duo/taskcore/TaskBinding$Lease;

    sget-object v12, Ldev/duo/taskcore/TaskBinding$Lease;->SURFACE_ATTACHED:Ldev/duo/taskcore/TaskBinding$Lease;

    if-ne v11, v12, :cond_2

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v11, v12, :cond_2

    iget-object v11, v9, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v11, v11, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    iget-object v12, v0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v13, v0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    .line 724
    invoke-virtual {v13, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    new-array v14, v7, [Ljava/lang/Object;

    invoke-virtual {v12, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_2

    goto :goto_1

    .line 723
    :cond_2
    goto :goto_0

    :cond_3
    move-object v9, v10

    .line 725
    :goto_1
    if-nez v9, :cond_4

    return-object v4

    .line 726
    :cond_4
    iget-object v8, v0, Ldev/duo/taskcore/WorkspaceShell;->changeLeash:Ljava/lang/reflect/Method;

    invoke-interface {v3, v7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    .line 727
    iget-object v11, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->main:Ldev/duo/taskcore/TaskBinding;

    const-string v12, "TaskCoreShell"

    const/4 v13, 0x2

    if-ne v9, v11, :cond_5

    const-class v11, Landroid/view/SurfaceControl;

    const-class v14, Landroid/view/SurfaceControl;

    filled-new-array {v14}, [Ljava/lang/Class;

    move-result-object v14

    const-string v15, "isSameSurface"

    invoke-virtual {v11, v15, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 728
    invoke-interface {v3, v13}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v14

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 727
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 729
    const-string v0, "whole workbench needs a separate animation leash; keeping native target"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return-object v4

    .line 732
    :cond_5
    iget-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->start:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0, v5, v8}, Ldev/duo/taskcore/WorkspaceShell;->placeGroupMembers(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Landroid/view/SurfaceControl$Transaction;)V

    .line 733
    iget-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->main:Ldev/duo/taskcore/TaskBinding;

    if-ne v9, v8, :cond_7

    .line 734
    invoke-interface {v3, v13}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/SurfaceControl;

    iput-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    .line 735
    const-string v8, "rootIndexFor"

    filled-new-array/range {p2 .. p3}, [Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v11, p1

    invoke-virtual {v11, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-interface {v3, v7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->info:Ljava/lang/Object;

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v10, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 736
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getRoot"

    move-object/from16 v11, p3

    invoke-virtual {v11, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->info:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 737
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getOffset"

    new-array v11, v7, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 738
    iget-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->start:Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v9}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v9

    iget-object v11, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v9, v11}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v9}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v9}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 739
    invoke-virtual {v9}, Ldev/duo/taskcore/WorkspaceHost;->root()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    iget-object v9, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    iget v11, v3, Landroid/graphics/Point;->x:I

    neg-int v11, v11

    int-to-float v11, v11

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v8, v9, v11, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v8, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v8, v10}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v5, v5, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v8}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 740
    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v0, v0, Ldev/duo/taskcore/Geometry;->display:Landroid/graphics/Rect;

    .line 741
    array-length v3, v1

    move v5, v7

    :goto_2
    if-ge v5, v3, :cond_6

    aget-object v8, v1, v5

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 742
    :cond_6
    new-instance v1, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v3, p5

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v3, p6

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 744
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 745
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setTo"

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Landroid/graphics/Rect;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setBounds"

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Landroid/graphics/Rect;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    const-string v7, "setAppBounds"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "whole workbench animation target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_7
    return-object v4
.end method

.method synthetic lambda$installGroupMotion$27$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 754
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 755
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 756
    if-eqz v1, :cond_0

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->controller:Ljava/lang/Object;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_0

    .line 757
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v2, v0

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    .line 758
    :cond_0
    return-object v0
.end method

.method synthetic lambda$installGroupMotion$28$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 761
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 762
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 763
    if-eqz v1, :cond_0

    iget-object v2, v1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->controller:Ljava/lang/Object;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    if-ne v2, p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, v1, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->returning:Z

    .line 764
    :cond_0
    return-object v0
.end method

.method synthetic lambda$installGroupMotion$29$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 769
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->mergedInto:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 770
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishToken:Landroid/os/IBinder;

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_0

    if-eqz v1, :cond_1

    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->token:Landroid/os/IBinder;

    .line 771
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    nop

    .line 772
    :goto_0
    if-eqz v2, :cond_2

    iput-boolean v3, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishing:Z

    .line 773
    :cond_2
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    if-eqz v2, :cond_3

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    if-ne v2, v0, :cond_3

    .line 775
    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v2}, Ldev/duo/taskcore/WorkspaceHost;->abandonSystemAnimation()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 776
    iget-boolean v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 773
    :cond_3
    return-object p1

    .line 774
    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    if-ne v2, v0, :cond_4

    .line 775
    iget-object v2, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    invoke-virtual {v2}, Ldev/duo/taskcore/WorkspaceHost;->abandonSystemAnimation()V

    iput-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->groupMotion:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    .line 776
    iget-boolean v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->restore:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_4

    iget-object v0, v0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 777
    :cond_4
    throw p1
.end method

.method synthetic lambda$installNotificationSources$30$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 882
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;

    .line 883
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$SourceSend;

    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ldev/duo/taskcore/WorkspaceShell$SourceSend;-><init>(Landroid/app/PendingIntent;I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 884
    :try_start_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 884
    :goto_0
    return-object p1

    .line 885
    :catchall_0
    move-exception p1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1
    throw p1
.end method

.method synthetic lambda$installNotificationSources$31$dev-duo-taskcore-WorkspaceShell(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 896
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 897
    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ldev/duo/taskcore/WorkspaceShell$Events;->ownsNotificationLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 900
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 901
    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 898
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$installNotificationSources$32$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 904
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 905
    const-string v0, "call"

    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 906
    const-string v1, "alarm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 907
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;

    .line 908
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    new-instance v2, Ldev/duo/taskcore/WorkspaceShell$SourceSend;

    iget-object p1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Ldev/duo/taskcore/WorkspaceShell$SourceSend;-><init>(Landroid/app/PendingIntent;I)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 909
    :try_start_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 909
    :goto_0
    return-object p1

    .line 910
    :catchall_0
    move-exception p1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1
    throw p1
.end method

.method synthetic lambda$installNotificationSources$33$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/WorkspaceSession$Refused;)V
    .locals 3

    .line 935
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification source refused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->external(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$installNotificationSources$34$dev-duo-taskcore-WorkspaceShell(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 922
    move-object/from16 v1, p5

    const-string v2, "notification source cleanup refused"

    const-string v3, "TaskCoreShell"

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->sendingSource:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;

    .line 923
    iget-wide v5, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    .line 924
    if-eqz v0, :cond_4

    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;->intent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_4

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-nez v4, :cond_0

    goto/16 :goto_4

    .line 925
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/os/IBinder;

    .line 926
    iget-object v4, v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;->intent:Landroid/app/PendingIntent;

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq v8, p1, :cond_1

    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 927
    :cond_1
    const/16 p1, 0x8

    invoke-interface {v1, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 928
    new-instance v4, Landroid/os/Bundle;

    if-nez p2, :cond_2

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {v4, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    move-object v11, v4

    .line 929
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v4, 0x0

    invoke-virtual {p3, v4, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 930
    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-array v4, v7, [Ljava/lang/Object;

    move-object/from16 v7, p4

    invoke-virtual {v7, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/os/IBinder;

    :goto_1
    move-object v9, v4

    .line 931
    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    .line 932
    :try_start_0
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    iget v10, v0, Ldev/duo/taskcore/WorkspaceShell$SourceSend;->kind:I

    invoke-virtual/range {v4 .. v10}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->registerSource(JLandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_2

    .line 937
    nop

    .line 938
    const-string p2, "dev.duo.taskcore.source"

    invoke-virtual {v11, p2, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 939
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p2

    aput-object v11, p2, p1

    .line 940
    :try_start_1
    invoke-interface {v1, p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 942
    :try_start_2
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    invoke-virtual {p2, v5, v6, v7}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->cancelSource(JLandroid/os/IBinder;)V
    :try_end_2
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_2 .. :try_end_2} :catch_0

    .line 943
    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 940
    :goto_2
    return-object p1

    .line 942
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_3
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    invoke-virtual {p2, v5, v6, v7}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->cancelSource(JLandroid/os/IBinder;)V
    :try_end_3
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_3 .. :try_end_3} :catch_1

    .line 943
    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, v0

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 944
    :goto_3
    throw p1

    .line 933
    :catch_2
    move-exception v0

    move-object p1, v0

    .line 934
    const-string p2, "notification source refused"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Refused;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 924
    :cond_4
    :goto_4
    invoke-interface {v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$playRestoreRemote$56$dev-duo-taskcore-WorkspaceShell(Landroid/os/IBinder;Ldev/duo/taskcore/WorkspaceShell$Pending;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1976
    invoke-virtual {p7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTransitionFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1977
    iget-object p6, p0, Ldev/duo/taskcore/WorkspaceShell;->remoteRestores:Ljava/util/Map;

    invoke-interface {p6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    if-eq p6, p2, :cond_0

    return-object v1

    .line 1978
    :cond_0
    iput-boolean v2, p2, Ldev/duo/taskcore/WorkspaceShell$Pending;->remoteFinished:Z

    .line 1980
    :try_start_0
    invoke-direct {p0, p3}, Ldev/duo/taskcore/WorkspaceShell;->reclaimMembers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1981
    iput-boolean v2, p4, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->finishing:Z

    .line 1982
    invoke-direct {p0, p3}, Ldev/duo/taskcore/WorkspaceShell;->finishGroupSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 1983
    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceShell;->finishCallback:Ljava/lang/reflect/Method;

    invoke-virtual {p3, p5, p8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const-string p3, "group restore remote finished"

    invoke-virtual {p2, v2, p3}, Ldev/duo/taskcore/WorkspaceShell$Pending;->finalResult(ZLjava/lang/String;)V

    .line 1985
    const-string p3, "TaskCoreShell"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "whole workbench restore remote finished "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceShell;->closeRemoteInfo(Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    .line 1987
    return-object v1

    .line 1986
    :catchall_0
    move-exception p1

    invoke-direct {p0, p2}, Ldev/duo/taskcore/WorkspaceShell;->closeRemoteInfo(Ldev/duo/taskcore/WorkspaceShell$Pending;)V

    throw p1

    .line 1989
    :cond_1
    invoke-virtual {p7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TaskCoreGroupRestoreFinish"

    return-object p1

    .line 1990
    :cond_2
    invoke-virtual {p7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hashCode"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1991
    :cond_3
    invoke-virtual {p7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "equals"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    aget-object p2, p8, p1

    if-ne p2, p6, :cond_4

    goto :goto_0

    :cond_4
    move v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1992
    :cond_5
    return-object v1
.end method

.method synthetic lambda$prepare$36$dev-duo-taskcore-WorkspaceShell(Landroid/graphics/Rect;)V
    .locals 1

    .line 983
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->returnOrphans(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$publishGroupFrame$51$dev-duo-taskcore-WorkspaceShell(Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 1594
    invoke-direct/range {p0 .. p9}, Ldev/duo/taskcore/WorkspaceShell;->sendGroupFrame(Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    return-void
.end method

.method synthetic lambda$registerRecentsGroup$52$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 9

    .line 1683
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->recents:Ljava/lang/Object;

    .line 1684
    const-string v1, "TaskCoreShell"

    if-eqz v0, :cond_8

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 1685
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1686
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1687
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    if-eqz p1, :cond_1

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v6, v6, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v3, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :cond_1
    const/4 p1, 0x0

    move v5, p1

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_3

    .line 1690
    aget-object v6, p2, v5

    if-eqz v6, :cond_2

    aget-object v6, p2, v5

    invoke-static {v6}, Ldev/duo/taskcore/WorkspaceShell;->released(Ldev/duo/taskcore/TaskBinding;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, p2, v5

    iget-object v6, v6, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v6, v6, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object v8, v8, Ldev/duo/taskcore/Geometry;->slots:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1692
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1693
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1694
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1695
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->clearRecentsGroupNow()V

    return-void

    .line 1696
    :cond_5
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsRects:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 1697
    :cond_6
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1698
    iput-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsRects:Ljava/util/List;

    .line 1699
    iput-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsGroup:Ljava/util/List;

    .line 1701
    :try_start_0
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->recentsChanged:Ljava/lang/reflect/Method;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    if-nez p2, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    if-eqz p1, :cond_7

    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    invoke-interface {p1}, Ldev/duo/taskcore/WorkspaceShell$Events;->canAnimateGroup()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->publishGroupFrame()V

    .line 1705
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "workbench recent identity updated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "recents group not registered"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    :goto_2
    return-void

    .line 1684
    :cond_8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "recents group not registered: controller "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$revealTask$55$dev-duo-taskcore-WorkspaceShell(I)V
    .locals 3

    .line 1878
    invoke-direct {p0, p1}, Ldev/duo/taskcore/WorkspaceShell;->isOwnedTask(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1879
    :cond_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1880
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda44;

    invoke-direct {v1, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda44;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1882
    :try_start_0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    .line 1883
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1884
    :cond_1
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1885
    goto :goto_2

    .line 1884
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1883
    :cond_2
    :goto_1
    return-void

    .line 1885
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reveal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TaskCoreShell"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    :goto_2
    return-void
.end method

.method synthetic lambda$startAnimation$57$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2006
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell;->playLaunchHidden(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$startAnimation$58$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;Ljava/lang/Integer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2009
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceShell;->playOverlay(Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$track$48$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Object;Ldev/duo/taskcore/WorkspaceShell$Pending;)V
    .locals 1

    .line 1373
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->pending:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_0

    const-string p1, "transition not ready in 5000ms"

    invoke-virtual {p2, p1}, Ldev/duo/taskcore/WorkspaceShell$Pending;->timeout(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$verifyAttach$49$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V
    .locals 0

    .line 1494
    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceShell;->verifyAttach(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    return-void
.end method

.method synthetic lambda$verifyReturn$50$dev-duo-taskcore-WorkspaceShell(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V
    .locals 0

    .line 1518
    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/taskcore/WorkspaceShell;->verifyReturn(Ldev/duo/taskcore/WorkspaceShell$Pending;Ljava/lang/String;J)V

    return-void
.end method

.method public launch(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1026
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1029
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1030
    const-class v2, Landroid/app/ActivityOptions;

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setLaunchCookie"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    iput-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->launching:Landroid/os/IBinder;

    .line 1034
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1035
    return-object v0
.end method

.method public place(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;ZLdev/duo/taskcore/WorkspaceSession$Done;)V
    .locals 7

    .line 2220
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->focusedMain:Ldev/duo/taskcore/TaskBinding;

    .line 2221
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 2222
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 2223
    invoke-virtual {p2}, [Ldev/duo/taskcore/TaskBinding;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Ldev/duo/taskcore/TaskBinding;

    .line 2224
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2225
    new-instance v3, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda38;

    invoke-direct {v3, p2, v0, p4}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda38;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ldev/duo/taskcore/WorkspaceSession$Done;)V

    .line 2226
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->main:Landroid/os/Handler;

    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda39;

    move-object v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda39;-><init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/lang/Runnable;Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2230
    return-void
.end method

.method public prepare(Ldev/duo/taskcore/WorkspaceShell$Events;Landroid/graphics/Rect;)V
    .locals 2

    .line 979
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->events:Ldev/duo/taskcore/WorkspaceShell$Events;

    .line 980
    new-instance p1, Ldev/duo/taskcore/Geometry;

    invoke-direct {p1, p2}, Ldev/duo/taskcore/Geometry;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    .line 981
    new-instance p1, Ldev/duo/taskcore/WorkspaceHost;

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    invoke-direct {p1, p2, v0, v1}, Ldev/duo/taskcore/WorkspaceHost;-><init>(Landroid/content/Context;Landroid/view/SurfaceControl;Ldev/duo/taskcore/Geometry;)V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->host:Ldev/duo/taskcore/WorkspaceHost;

    .line 982
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->geometry:Ldev/duo/taskcore/Geometry;

    iget-object p2, p2, Ldev/duo/taskcore/Geometry;->logical:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 983
    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    new-instance v0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;-><init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 984
    return-void
.end method

.method public readiness()Ljava/lang/String;
    .locals 4

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " displayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .line 200
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerRecentsGroup(Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 2

    .line 1680
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 1681
    if-nez v0, :cond_0

    return-void

    .line 1682
    :cond_0
    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda47;

    invoke-direct {v1, p0, p1, p2}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda47;-><init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1708
    return-void
.end method

.method public releaseOwner(Ldev/duo/taskcore/TaskBinding;)Ljava/lang/String;
    .locals 6

    .line 2178
    const-string v0, "TaskCoreShell"

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2180
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->removeListener:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2182
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2184
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2185
    if-nez v3, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2186
    :goto_0
    iget-object v5, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    if-ne v3, v5, :cond_1

    const-string p1, "owner after return still this controller"

    return-object p1

    .line 2187
    :cond_1
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2188
    iget-boolean v3, p1, Ldev/duo/taskcore/TaskBinding;->handedOver:Z

    if-nez v3, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowing mode still multi-window after return (owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2189
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " handed to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p1, Ldev/duo/taskcore/TaskBinding;->handedOver:Z

    if-eqz v3, :cond_3

    const-string v3, " (system choice kept)"

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_4
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->unregisterTaskView:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->taskViewTransitions:Ljava/lang/Object;

    iget-object v4, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->tvcClass:Ljava/lang/Class;

    const-string v3, "resetTaskInfo"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2194
    const/4 p1, 0x0

    return-object p1

    .line 2195
    :catchall_0
    move-exception v1

    .line 2196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release owner "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2197
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public releaseToSystem(Ldev/duo/taskcore/TaskBinding;)V
    .locals 9

    .line 2129
    const-string v0, "TaskCoreShell"

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->live:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2130
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2132
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2133
    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v2, v2, Ldev/duo/taskcore/TaskBinding$Origin;->leash:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceControl;

    .line 2134
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 2135
    :cond_0
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 2136
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->displayArea:Landroid/view/SurfaceControl;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskLeash:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 2137
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 2138
    :cond_2
    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell;->infoPosition:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 2139
    new-instance v6, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v6}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    :try_start_1
    invoke-virtual {v6, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v2, v7, v7}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v2, v8, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 2141
    invoke-static {v6, v2, v5}, Ldev/duo/taskcore/Tx;->windowCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    .line 2142
    const-class v4, Landroid/app/TaskInfo;

    const-string v5, "isVisible"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v6, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 2143
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2144
    :try_start_2
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 2145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taken by the system (parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): leash handed back now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2148
    goto :goto_4

    .line 2139
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v6}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    .line 2137
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taken by the system: parent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " leash unknown, left to its transition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    .line 2134
    :cond_4
    :goto_3
    return-void

    .line 2146
    :catch_0
    move-exception v1

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hand back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2149
    :goto_4
    return-void
.end method

.method public revealTask(I)V
    .locals 2

    .line 1875
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    .line 1876
    if-nez v0, :cond_0

    return-void

    .line 1877
    :cond_0
    new-instance v1, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, p1}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda68;-><init>(Ldev/duo/taskcore/WorkspaceShell;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1887
    return-void
.end method

.method public serverBeginReturn(JLjava/lang/String;)V
    .locals 6

    .line 1176
    :try_start_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v0

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda31;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda31;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v1, 0x4

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "begin return not published: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskCoreShell"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_0
    return-void
.end method

.method public serverFinishReturn(J)Ljava/lang/String;
    .locals 6

    .line 1186
    :try_start_0
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 1187
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    .line 1188
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->handledSources:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1190
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell;->hiddenUntilAttached:Ljava/util/Set;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Ldev/duo/taskcore/WorkspaceShell;->revealTask(I)V

    goto :goto_0

    .line 1191
    :cond_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->claims:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ldev/duo/taskcore/WorkspaceSession$Refused; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    const/4 p1, 0x0

    return-object p1

    .line 1194
    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serverLayout(JILdev/duo/taskcore/TaskBinding;[Ldev/duo/taskcore/TaskBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1171
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v0

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda11;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda11;-><init>(I)V

    const/4 v5, 0x0

    const/4 v1, 0x3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 1172
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    iget p1, p1, Ldev/duo/taskcore/WorkspaceProtocol$Client;->lastRevision:I

    if-ne p1, p3, :cond_0

    .line 1173
    return-void

    .line 1172
    :cond_0
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "layout revision "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Ldev/duo/taskcore/WorkspaceShell;->server:Ldev/duo/taskcore/WorkspaceProtocol$Client;

    iget p4, p4, Ldev/duo/taskcore/WorkspaceProtocol$Client;->lastRevision:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serverOpen(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1154
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    .line 1155
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v1

    invoke-virtual {v1}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->hello()V

    .line 1156
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v2

    new-instance v6, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda34;

    invoke-direct {v6, v0}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda34;-><init>(I)V

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 1157
    iput-wide v4, p0, Ldev/duo/taskcore/WorkspaceShell;->activeEpoch:J

    .line 1158
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->handledSources:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1159
    return-void
.end method

.method public serverRelease(JLdev/duo/taskcore/TaskBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1181
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v0

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda8;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda8;-><init>(Ldev/duo/taskcore/TaskBinding;)V

    const/4 v5, 0x0

    const/16 v1, 0x8

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    .line 1182
    return-void
.end method

.method public serverSnapshot(JLdev/duo/taskcore/TaskBinding;)Ldev/duo/taskcore/TaskBinding$Snapshot;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1162
    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceShell;->server()Ldev/duo/taskcore/WorkspaceProtocol$Client;

    move-result-object v0

    new-instance v4, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda21;

    invoke-direct {v4, p3}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda21;-><init>(Ldev/duo/taskcore/TaskBinding;)V

    new-instance v5, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda22;

    invoke-direct {v5}, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda22;-><init>()V

    const/4 v1, 0x2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->call(IJLdev/duo/taskcore/WorkspaceProtocol$Client$Writer;Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/taskcore/TaskBinding$Snapshot;

    return-object p1
.end method

.method public setSystemGate(Ldev/duo/taskcore/SystemGate;)V
    .locals 0

    .line 2235
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell;->gate:Ldev/duo/taskcore/SystemGate;

    return-void
.end method

.method public shellHandler()Landroid/os/Handler;
    .locals 1

    .line 202
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->shell:Landroid/os/Handler;

    return-object v0
.end method

.method public systemGate()Ldev/duo/taskcore/SystemGate;
    .locals 1

    .line 2237
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->gate:Ldev/duo/taskcore/SystemGate;

    return-object v0
.end method

.method public takeOwner(Ldev/duo/taskcore/TaskBinding;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldev/duo/taskcore/WorkspaceSession$Refused;
        }
    .end annotation

    .line 1236
    const-string v0, "addListenerForTaskId: "

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->addListenerForTaskId:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v4, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    iget-object v5, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v5, v5, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1243
    nop

    .line 1246
    :try_start_1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1247
    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1250
    :goto_0
    nop

    .line 1252
    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 1253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->originalOwner:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v4, v1

    .line 1254
    :cond_1
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owner not transferred (owner now "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    xor-int/2addr v1, v4

    invoke-direct {p1, v0, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    throw p1

    .line 1258
    :cond_3
    :try_start_2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell;->getPendingInfo:Ljava/lang/reflect/Method;

    iget-object v2, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1259
    if-eqz v0, :cond_4

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-ne v0, p1, :cond_4

    .line 1263
    nop

    .line 1264
    return-void

    .line 1260
    :cond_4
    new-instance p1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    const-string v0, "pending info does not match task token"

    invoke-direct {p1, v0, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    throw p1
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1261
    :catch_0
    move-exception p1

    .line 1262
    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owner check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 1248
    :catch_1
    move-exception p1

    .line 1249
    new-instance v0, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "owner read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    throw v0

    .line 1241
    :catch_2
    move-exception p1

    .line 1242
    new-instance v1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1237
    :catch_3
    move-exception p1

    .line 1239
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_5

    new-instance v1, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_5
    new-instance v2, Ldev/duo/taskcore/WorkspaceSession$Refused;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Ldev/duo/taskcore/WorkspaceSession$Refused;-><init>(Ljava/lang/String;Z)V

    throw v2
.end method

.method public takenBySystem(Ldev/duo/taskcore/TaskBinding;)Z
    .locals 5

    .line 2113
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell;->getRunningTaskInfo:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2114
    if-eqz v1, :cond_3

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->tokenAsBinder:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->infoToken:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget-object v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->tokenBinder:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 2115
    :cond_0
    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoMode:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoParent:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoDisplay:Ljava/lang/reflect/Field;

    .line 2116
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->displayId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->infoUser:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Ldev/duo/taskcore/TaskBinding;->origin:Ldev/duo/taskcore/TaskBinding$Origin;

    iget v3, v3, Ldev/duo/taskcore/TaskBinding$Origin;->userId:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell;->getTaskListener:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell;->organizer:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 2117
    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Ldev/duo/taskcore/TaskBinding;->controller:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 2115
    :cond_2
    return v0

    .line 2114
    :cond_3
    :goto_0
    return v0

    .line 2118
    :catch_0
    move-exception v1

    .line 2119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "task state unreadable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": left to the normal return"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TaskCoreShell"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2120
    return v0
.end method
