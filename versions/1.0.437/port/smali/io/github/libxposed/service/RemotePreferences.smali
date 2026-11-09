.class public final Lio/github/libxposed/service/RemotePreferences;
.super Ljava/lang/Object;
.source "RemotePreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/libxposed/service/RemotePreferences$Editor;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/Object;

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String; = "RemotePreferences"

.field static volatile shouldNotifyCleared:Z


# instance fields
.field private final mGroup:Ljava/lang/String;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lio/github/libxposed/service/XposedService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroup(Lio/github/libxposed/service/RemotePreferences;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/github/libxposed/service/RemotePreferences;->mGroup:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lio/github/libxposed/service/RemotePreferences;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/github/libxposed/service/RemotePreferences;->mListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMap(Lio/github/libxposed/service/RemotePreferences;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lio/github/libxposed/service/RemotePreferences;)Lio/github/libxposed/service/XposedService;
    .locals 0

    iget-object p0, p0, Lio/github/libxposed/service/RemotePreferences;->mService:Lio/github/libxposed/service/XposedService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMap(Lio/github/libxposed/service/RemotePreferences;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetEXECUTOR()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lio/github/libxposed/service/RemotePreferences;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/github/libxposed/service/RemotePreferences;->CONTENT:Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/github/libxposed/service/RemotePreferences;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lio/github/libxposed/service/RemotePreferences;->shouldNotifyCleared:Z

    return-void
.end method

.method private constructor <init>(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)V
    .locals 1
    .param p1, "service"    # Lio/github/libxposed/service/XposedService;
    .param p2, "group"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mListeners:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lio/github/libxposed/service/RemotePreferences;->mService:Lio/github/libxposed/service/XposedService;

    .line 40
    iput-object p2, p0, Lio/github/libxposed/service/RemotePreferences;->mGroup:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static newInstance(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)Lio/github/libxposed/service/RemotePreferences;
    .locals 4
    .param p0, "service"    # Lio/github/libxposed/service/XposedService;
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lio/github/libxposed/service/XposedService;->asInterface()Lio/github/libxposed/service/IXposedService;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/github/libxposed/service/IXposedService;->requestRemotePreferences(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "output":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 47
    new-instance v1, Lio/github/libxposed/service/RemotePreferences;

    invoke-direct {v1, p0, p1}, Lio/github/libxposed/service/RemotePreferences;-><init>(Lio/github/libxposed/service/XposedService;Ljava/lang/String;)V

    .line 48
    .local v1, "prefs":Lio/github/libxposed/service/RemotePreferences;
    const-string v2, "map"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 49
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, v1, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    .line 51
    :goto_0
    return-object v1

    .line 46
    .end local v1    # "prefs":Lio/github/libxposed/service/RemotePreferences;
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Framework returns null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/github/libxposed/service/RemotePreferences;->edit()Lio/github/libxposed/service/RemotePreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lio/github/libxposed/service/RemotePreferences$Editor;
    .locals 1

    .line 116
    new-instance v0, Lio/github/libxposed/service/RemotePreferences$Editor;

    invoke-direct {v0, p0}, Lio/github/libxposed/service/RemotePreferences$Editor;-><init>(Lio/github/libxposed/service/RemotePreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 95
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 89
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 77
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 83
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "v":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method declared-synchronized onDelete()V
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    .end local p0    # "this":Lio/github/libxposed/service/RemotePreferences;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 106
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mListeners:Ljava/util/Map;

    sget-object v1, Lio/github/libxposed/service/RemotePreferences;->CONTENT:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 111
    iget-object v0, p0, Lio/github/libxposed/service/RemotePreferences;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
