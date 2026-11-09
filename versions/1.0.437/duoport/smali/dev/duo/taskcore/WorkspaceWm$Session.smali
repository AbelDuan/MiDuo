.class final Ldev/duo/taskcore/WorkspaceWm$Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceWm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation


# instance fields
.field final a:J

.field final b:Landroid/os/IBinder;

.field final c:I

.field final d:I

.field final e:Ljava/lang/Object;

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/duo/taskcore/WorkspaceWm$Saved;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceWm$Source;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceWm$Source;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/os/IBinder;

.field l:Z

.field m:I

.field n:Z

.field o:Z

.field final synthetic p:Ldev/duo/taskcore/WorkspaceWm;


# direct methods
.method public static synthetic $r8$lambda$Y70osY0xkSuPRiwnaIJhHuCDjU4(Ldev/duo/taskcore/WorkspaceWm$Session;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/taskcore/WorkspaceWm$Session;->a()V

    return-void
.end method

.method constructor <init>(Ldev/duo/taskcore/WorkspaceWm;JLandroid/os/IBinder;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->f:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->g:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->h:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->i:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->j:Ljava/util/Map;

    .line 13
    iput-wide p2, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->a:J

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->b:Landroid/os/IBinder;

    iput p5, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->c:I

    iput p6, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->d:I

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->e:Ljava/lang/Object;

    return-void
.end method

.method private synthetic a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceWm;->b(Ldev/duo/taskcore/WorkspaceWm;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceWm;->c(Ldev/duo/taskcore/WorkspaceWm;)Ldev/duo/taskcore/WorkspaceWm$Session;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    const-string v1, "TaskCoreWm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemUI died with session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->f:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldev/duo/taskcore/WorkspaceWm;->a(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 5
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v1, p0}, Ldev/duo/taskcore/WorkspaceWm;->b(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)V

    .line 6
    monitor-exit v0

    return-void

    .line 2
    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->o:Z

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->p:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceWm;->a(Ldev/duo/taskcore/WorkspaceWm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/k$b$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/k$b$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
