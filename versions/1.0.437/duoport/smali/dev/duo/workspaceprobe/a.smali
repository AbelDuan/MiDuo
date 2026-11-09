.class final Ldev/duo/workspaceprobe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/a$b;,
        Ldev/duo/workspaceprobe/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ldev/duo/workspaceprobe/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static a(I)J
    .locals 2

    .line 1
    if-gtz p0, :cond_0

    const-wide/16 v0, 0x3e8

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-wide/16 v0, 0x7d0

    return-wide v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-wide/16 v0, 0xfa0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method static a(ZZZZIZZIZ)Ldev/duo/workspaceprobe/a$b;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p8, :cond_0

    .line 3
    new-instance p0, Ldev/duo/workspaceprobe/a$b;

    move p1, p2

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    invoke-direct/range {p0 .. p6}, Ldev/duo/workspaceprobe/a$b;-><init>(ZZIZZI)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method a()J
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized a(Ljava/lang/String;Ldev/duo/workspaceprobe/a$b;J)Ldev/duo/workspaceprobe/a$a;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, p3

    if-lez v1, :cond_1

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p3, p0, Ldev/duo/workspaceprobe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/workspaceprobe/a$b;

    .line 8
    new-instance p3, Ldev/duo/workspaceprobe/a$a;

    invoke-virtual {p2, p1}, Ldev/duo/workspaceprobe/a$b;->a(Ldev/duo/workspaceprobe/a$b;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p3, p1, p2}, Ldev/duo/workspaceprobe/a$a;-><init>(Ldev/duo/workspaceprobe/a$b;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p3

    .line 3
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ldev/duo/workspaceprobe/a;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 8
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Ljava/lang/String;)Ldev/duo/workspaceprobe/a$b;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/duo/workspaceprobe/a$b;

    return-object p1
.end method

.method declared-synchronized b(Ljava/lang/String;Ldev/duo/workspaceprobe/a$b;J)Z
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ldev/duo/workspaceprobe/a;->a(Ljava/lang/String;Ldev/duo/workspaceprobe/a$b;J)Ldev/duo/workspaceprobe/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p1, Ldev/duo/workspaceprobe/a$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 1
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
