.class public final Lio/github/libxposed/service/XposedService;
.super Ljava/lang/Object;
.source "XposedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/XposedService$ServiceException;,
        Lio/github/libxposed/service/XposedService$OnScopeEventListener;,
        Lio/github/libxposed/service/XposedService$HotReloadCallback;
    }
.end annotation


# static fields
.field public static final API_101:I = 0x65

.field public static final API_102:I = 0x66

.field public static final PROP_CAP_REMOTE:J = 0x2L

.field public static final PROP_CAP_SYSTEM:J = 0x1L

.field public static final PROP_RT_API_PROTECTION:J = 0x4L

.field private static final hotReloadCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/github/libxposed/service/IHotReloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final scopeCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/github/libxposed/service/XposedService$OnScopeEventListener;",
            "Lio/github/libxposed/service/IXposedScopeCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRemotePrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/github/libxposed/service/RemotePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lio/github/libxposed/service/IXposedService;


# direct methods
.method public static synthetic $r8$lambda$T61Hp6givnZnE4Lb5F5l4UAfaGw(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;
    .locals 0

    invoke-direct {p0, p1}, Lio/github/libxposed/service/XposedService;->lambda$getRemotePreferences$0(Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgethotReloadCallbacks()Ljava/util/Set;
    .locals 1

    sget-object v0, Lio/github/libxposed/service/XposedService;->hotReloadCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetscopeCallbacks()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/github/libxposed/service/XposedService;->scopeCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/github/libxposed/service/XposedService;->scopeCallbacks:Ljava/util/Map;

    .line 65
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    sput-object v0, Lio/github/libxposed/service/XposedService;->hotReloadCallbacks:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lio/github/libxposed/service/IXposedService;)V
    .locals 1
    .param p1, "service"    # Lio/github/libxposed/service/IXposedService;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/github/libxposed/service/XposedService;->mRemotePrefs:Ljava/util/Map;

    .line 126
    iput-object p1, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    .line 127
    return-void
.end method

.method private synthetic lambda$getRemotePreferences$0(Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;
    .locals 2
    .param p1, "k"    # Ljava/lang/String;

    .line 382
    :try_start_0
    invoke-static {p0, p1}, Lio/github/libxposed/service/RemotePreferences;->newInstance(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method private requireApi(I)V
    .locals 3
    .param p1, "api"    # I

    .line 134
    invoke-virtual {p0}, Lio/github/libxposed/service/XposedService;->getApiVersion()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 137
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires Xposed service API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toHookedTarget(Lio/github/libxposed/service/HookedProcess;)Lio/github/libxposed/service/HookedTarget;
    .locals 10
    .param p0, "process"    # Lio/github/libxposed/service/HookedProcess;

    .line 347
    iget-object v0, p0, Lio/github/libxposed/service/HookedProcess;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Lio/github/libxposed/service/HookedTarget;

    iget-wide v2, p0, Lio/github/libxposed/service/HookedProcess;->targetId:J

    iget v4, p0, Lio/github/libxposed/service/HookedProcess;->uid:I

    iget v5, p0, Lio/github/libxposed/service/HookedProcess;->pid:I

    iget-object v6, p0, Lio/github/libxposed/service/HookedProcess;->processName:Ljava/lang/String;

    iget v0, p0, Lio/github/libxposed/service/HookedProcess;->state:I

    .line 355
    invoke-static {v0}, Lio/github/libxposed/service/XposedService;->toHookedTargetState(I)Lio/github/libxposed/service/HookedTarget$State;

    move-result-object v7

    iget-wide v8, p0, Lio/github/libxposed/service/HookedProcess;->loadedVersionCode:J

    invoke-direct/range {v1 .. v9}, Lio/github/libxposed/service/HookedTarget;-><init>(JIILjava/lang/String;Lio/github/libxposed/service/HookedTarget$State;J)V

    .line 350
    return-object v1

    .line 348
    :cond_0
    new-instance v0, Lio/github/libxposed/service/XposedService$ServiceException;

    const-string v1, "Framework returns target with null processName"

    invoke-direct {v0, v1}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toHookedTargetState(I)Lio/github/libxposed/service/HookedTarget$State;
    .locals 3
    .param p0, "state"    # I

    .line 361
    packed-switch p0, :pswitch_data_0

    .line 366
    new-instance v0, Lio/github/libxposed/service/XposedService$ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hooked target state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_0
    sget-object v0, Lio/github/libxposed/service/HookedTarget$State;->FAILED:Lio/github/libxposed/service/HookedTarget$State;

    goto :goto_0

    .line 364
    :pswitch_1
    sget-object v0, Lio/github/libxposed/service/HookedTarget$State;->RELOADING:Lio/github/libxposed/service/HookedTarget$State;

    goto :goto_0

    .line 363
    :pswitch_2
    sget-object v0, Lio/github/libxposed/service/HookedTarget$State;->STALE:Lio/github/libxposed/service/HookedTarget$State;

    goto :goto_0

    .line 362
    :pswitch_3
    sget-object v0, Lio/github/libxposed/service/HookedTarget$State;->UP_TO_DATE:Lio/github/libxposed/service/HookedTarget$State;

    .line 361
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method asInterface()Lio/github/libxposed/service/IXposedService;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    return-object v0
.end method

.method public deleteRemoteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 453
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0, p1}, Lio/github/libxposed/service/IXposedService;->deleteRemoteFile(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public declared-synchronized deleteRemotePreferences(Ljava/lang/String;)V
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    monitor-enter p0

    .line 398
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mRemotePrefs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/libxposed/service/RemotePreferences;

    .line 399
    .local v0, "prefs":Lio/github/libxposed/service/RemotePreferences;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/libxposed/service/RemotePreferences;->onDelete()V

    .line 400
    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    :cond_0
    iget-object v1, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v1, p1}, Lio/github/libxposed/service/IXposedService;->deleteRemotePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v0    # "prefs":Lio/github/libxposed/service/RemotePreferences;
    nop

    .line 404
    monitor-exit p0

    return-void

    .line 397
    .end local p1    # "group":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 401
    .restart local p1    # "group":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local p1    # "group":Ljava/lang/String;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getApiVersion()I
    .locals 2

    .line 147
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getApiVersion()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFrameworkName()Ljava/lang/String;
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getFrameworkName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFrameworkProperties()J
    .locals 2

    .line 206
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getFrameworkProperties()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 2

    .line 177
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getFrameworkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getFrameworkVersionCode()J
    .locals 2

    .line 191
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getFrameworkVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public declared-synchronized getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "group"    # Ljava/lang/String;

    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mRemotePrefs:Ljava/util/Map;

    new-instance v1, Lio/github/libxposed/service/XposedService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/libxposed/service/XposedService$$ExternalSyntheticLambda0;-><init>(Lio/github/libxposed/service/XposedService;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 380
    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    .end local p1    # "group":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getRunningTargets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/libxposed/service/HookedTarget;",
            ">;"
        }
    .end annotation

    .line 271
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lio/github/libxposed/service/XposedService;->requireApi(I)V

    .line 273
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getRunningTargets()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "processes":Ljava/util/List;, "Ljava/util/List<Lio/github/libxposed/service/HookedProcess;>;"
    if-eqz v0, :cond_2

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .local v1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/github/libxposed/service/HookedTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/github/libxposed/service/HookedProcess;

    .line 277
    .local v3, "process":Lio/github/libxposed/service/HookedProcess;
    if-eqz v3, :cond_0

    .line 278
    invoke-static {v3}, Lio/github/libxposed/service/XposedService;->toHookedTarget(Lio/github/libxposed/service/HookedProcess;)Lio/github/libxposed/service/HookedTarget;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    nop

    .end local v3    # "process":Lio/github/libxposed/service/HookedProcess;
    goto :goto_0

    .line 277
    .restart local v3    # "process":Lio/github/libxposed/service/HookedProcess;
    :cond_0
    new-instance v2, Lio/github/libxposed/service/XposedService$ServiceException;

    const-string v4, "Framework returns null target"

    invoke-direct {v2, v4}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    throw v2

    .line 280
    .end local v3    # "process":Lio/github/libxposed/service/HookedProcess;
    .restart local p0    # "this":Lio/github/libxposed/service/XposedService;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 274
    .end local v1    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/github/libxposed/service/HookedTarget;>;"
    :cond_2
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    const-string v2, "Framework returns null"

    invoke-direct {v1, v2}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0    # "processes":Ljava/util/List;, "Ljava/util/List<Lio/github/libxposed/service/HookedProcess;>;"
    .restart local p0    # "this":Lio/github/libxposed/service/XposedService;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getScope()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->getScope()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public hotReloadModule(Lio/github/libxposed/service/HookedTarget;Landroid/os/Bundle;Lio/github/libxposed/service/XposedService$HotReloadCallback;)V
    .locals 4
    .param p1, "target"    # Lio/github/libxposed/service/HookedTarget;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lio/github/libxposed/service/XposedService$HotReloadCallback;

    .line 321
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lio/github/libxposed/service/XposedService;->requireApi(I)V

    .line 322
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v0, Lio/github/libxposed/service/XposedService$1;

    invoke-direct {v0, p0, p3, p1}, Lio/github/libxposed/service/XposedService$1;-><init>(Lio/github/libxposed/service/XposedService;Lio/github/libxposed/service/XposedService$HotReloadCallback;Lio/github/libxposed/service/HookedTarget;)V

    .line 334
    .local v0, "remoteCallback":Lio/github/libxposed/service/XposedService$1;
    sget-object v1, Lio/github/libxposed/service/XposedService;->hotReloadCallbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    :try_start_0
    iget-object v1, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    iget-wide v2, p1, Lio/github/libxposed/service/HookedTarget;->mTargetId:J

    invoke-interface {v1, v2, v3, p2, v0}, Lio/github/libxposed/service/IXposedService;->hotReloadModule(JLandroid/os/Bundle;Lio/github/libxposed/service/IHotReloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    nop

    .line 344
    return-void

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lio/github/libxposed/service/XposedService;->hotReloadCallbacks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    throw v1

    .line 337
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lio/github/libxposed/service/XposedService;->hotReloadCallbacks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    new-instance v2, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v2, v1}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v2
.end method

.method public listRemoteFiles()[Ljava/lang/String;
    .locals 3

    .line 416
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0}, Lio/github/libxposed/service/IXposedService;->listRemoteFiles()[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 418
    return-object v0

    .line 417
    :cond_0
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    const-string v2, "Framework returns null"

    invoke-direct {v1, v2}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0    # "files":[Ljava/lang/String;
    .restart local p0    # "this":Lio/github/libxposed/service/XposedService;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public openRemoteFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 435
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0, p1}, Lio/github/libxposed/service/IXposedService;->openRemoteFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 436
    .local v0, "file":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 437
    return-object v0

    .line 436
    :cond_0
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    const-string v2, "Framework returns null"

    invoke-direct {v1, v2}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lio/github/libxposed/service/XposedService;
    .end local p1    # "name":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v0    # "file":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lio/github/libxposed/service/XposedService;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public removeScope(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-interface {v0, p1}, Lio/github/libxposed/service/IXposedService;->removeScope(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public requestScope(Ljava/util/List;Lio/github/libxposed/service/XposedService$OnScopeEventListener;)V
    .locals 2
    .param p2, "callback"    # Lio/github/libxposed/service/XposedService$OnScopeEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/github/libxposed/service/XposedService$OnScopeEventListener;",
            ")V"
        }
    .end annotation

    .line 236
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lio/github/libxposed/service/XposedService;->mService:Lio/github/libxposed/service/IXposedService;

    invoke-static {p2}, Lio/github/libxposed/service/XposedService$OnScopeEventListener;->-$$Nest$masInterface(Lio/github/libxposed/service/XposedService$OnScopeEventListener;)Lio/github/libxposed/service/IXposedScopeCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/github/libxposed/service/IXposedService;->requestScope(Ljava/util/List;Lio/github/libxposed/service/IXposedScopeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 240
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lio/github/libxposed/service/XposedService$ServiceException;

    invoke-direct {v1, v0}, Lio/github/libxposed/service/XposedService$ServiceException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
