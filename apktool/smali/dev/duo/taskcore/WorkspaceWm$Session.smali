.class final Ldev/duo/taskcore/WorkspaceWm$Session;
.super Ljava/lang/Object;
.source "WorkspaceWm.java"

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
.field dead:Z

.field final epoch:J

.field fsiForeground:Landroid/os/IBinder;

.field fsiLeftByUser:Z

.field final fsiMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final fsis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceWm$Source;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Landroid/os/IBinder;

.field final pid:I

.field final process:Ljava/lang/Object;

.field final registeredSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ldev/duo/taskcore/WorkspaceWm$Source;",
            ">;"
        }
    .end annotation
.end field

.field returning:Z

.field revision:I

.field final saved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/duo/taskcore/WorkspaceWm$Saved;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ldev/duo/taskcore/WorkspaceWm;

.field final transitionSources:Ljava/util/Map;
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

.field final uid:I


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceWm;JLandroid/os/IBinder;IILjava/lang/Object;)V
    .locals 0

    .line 102
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    .line 93
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->registeredSources:Ljava/util/Map;

    .line 94
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->transitionSources:Ljava/util/Map;

    .line 95
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->fsis:Ljava/util/Map;

    .line 96
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->fsiMembers:Ljava/util/Map;

    .line 103
    iput-wide p2, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->owner:Landroid/os/IBinder;

    iput p5, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->uid:I

    iput p6, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->pid:I

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->process:Ljava/lang/Object;

    .line 104
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->dead:Z

    .line 109
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceWm;->access$000(Ldev/duo/taskcore/WorkspaceWm;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldev/duo/taskcore/WorkspaceWm$Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/taskcore/WorkspaceWm$Session$$ExternalSyntheticLambda0;-><init>(Ldev/duo/taskcore/WorkspaceWm$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method synthetic lambda$binderDied$0$dev-duo-taskcore-WorkspaceWm$Session()V
    .locals 5

    .line 110
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v0}, Ldev/duo/taskcore/WorkspaceWm;->access$100(Ldev/duo/taskcore/WorkspaceWm;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v1}, Ldev/duo/taskcore/WorkspaceWm;->access$200(Ldev/duo/taskcore/WorkspaceWm;)Ldev/duo/taskcore/WorkspaceWm$Session;

    move-result-object v1

    if-eq v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 112
    :cond_0
    const-string v1, "TaskCoreWm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemUI died with session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->epoch:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": restoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldev/duo/taskcore/WorkspaceWm;->access$202(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)Ldev/duo/taskcore/WorkspaceWm$Session;

    .line 114
    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceWm$Session;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-static {v1, p0}, Ldev/duo/taskcore/WorkspaceWm;->access$300(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;)V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
