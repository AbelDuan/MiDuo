.class public final Lio/github/libxposed/service/XposedServiceHelper;
.super Ljava/lang/Object;
.source "XposedServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XposedServiceHelper"

.field private static final mCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/github/libxposed/service/XposedService;",
            ">;"
        }
    .end annotation
.end field

.field private static mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBinderReceived$0(Lio/github/libxposed/service/XposedService;)V
    .locals 1
    .param p0, "service"    # Lio/github/libxposed/service/XposedService;

    .line 44
    sget-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    invoke-interface {v0, p0}, Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;->onServiceDied(Lio/github/libxposed/service/XposedService;)V

    return-void
.end method

.method static synthetic lambda$registerListener$1(Lio/github/libxposed/service/XposedService;)V
    .locals 1
    .param p0, "service"    # Lio/github/libxposed/service/XposedService;

    .line 66
    sget-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    invoke-interface {v0, p0}, Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;->onServiceDied(Lio/github/libxposed/service/XposedService;)V

    return-void
.end method

.method static onBinderReceived(Landroid/os/IBinder;)V
    .locals 4
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 37
    if-nez p0, :cond_0

    return-void

    .line 38
    :cond_0
    sget-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    monitor-enter v0

    .line 40
    :try_start_0
    new-instance v1, Lio/github/libxposed/service/XposedService;

    invoke-static {p0}, Lio/github/libxposed/service/IXposedService$Stub;->asInterface(Landroid/os/IBinder;)Lio/github/libxposed/service/IXposedService;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/github/libxposed/service/XposedService;-><init>(Lio/github/libxposed/service/IXposedService;)V

    .line 41
    .local v1, "service":Lio/github/libxposed/service/XposedService;
    sget-object v2, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    if-nez v2, :cond_1

    .line 42
    sget-object v2, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda1;-><init>(Lio/github/libxposed/service/XposedService;)V

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 45
    sget-object v2, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    invoke-interface {v2, v1}, Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;->onServiceBind(Lio/github/libxposed/service/XposedService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v1    # "service":Lio/github/libxposed/service/XposedService;
    :goto_0
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "XposedServiceHelper"

    const-string v3, "onBinderReceived"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v0

    .line 51
    return-void

    .line 50
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static registerListener(Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;)V
    .locals 6
    .param p0, "listener"    # Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    .line 60
    sget-object v0, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    monitor-enter v0

    .line 61
    :try_start_0
    sput-object p0, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    .line 62
    sget-object v1, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 63
    sget-object v1, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/github/libxposed/service/XposedService;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 65
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/libxposed/service/XposedService;

    .line 66
    .local v2, "service":Lio/github/libxposed/service/XposedService;
    invoke-virtual {v2}, Lio/github/libxposed/service/XposedService;->asInterface()Lio/github/libxposed/service/IXposedService;

    move-result-object v3

    invoke-interface {v3}, Lio/github/libxposed/service/IXposedService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lio/github/libxposed/service/XposedServiceHelper$$ExternalSyntheticLambda0;-><init>(Lio/github/libxposed/service/XposedService;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 67
    sget-object v3, Lio/github/libxposed/service/XposedServiceHelper;->mListener:Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;

    invoke-interface {v3, v2}, Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;->onServiceBind(Lio/github/libxposed/service/XposedService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "service":Lio/github/libxposed/service/XposedService;
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v2

    .line 69
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "XposedServiceHelper"

    const-string v4, "registerListener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 71
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 73
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/github/libxposed/service/XposedService;>;"
    :cond_0
    sget-object v1, Lio/github/libxposed/service/XposedServiceHelper;->mCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 75
    :cond_1
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
