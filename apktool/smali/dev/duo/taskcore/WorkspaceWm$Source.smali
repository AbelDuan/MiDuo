.class final Ldev/duo/taskcore/WorkspaceWm$Source;
.super Ljava/lang/Object;
.source "WorkspaceWm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceWm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Source"
.end annotation


# instance fields
.field final activities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field activity:Ljava/lang/Object;

.field final cookie:Landroid/os/IBinder;

.field fsiTarget:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field final kind:I

.field final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final piTarget:Landroid/os/IBinder;

.field record:Ljava/lang/Object;

.field final removedActivities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final request:Landroid/os/IBinder;

.field result:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

.field sendCompleted:Z

.field final session:Ldev/duo/taskcore/WorkspaceWm$Session;

.field task:Ljava/lang/Object;

.field final synthetic this$0:Ldev/duo/taskcore/WorkspaceWm;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 0

    .line 68
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->this$0:Ldev/duo/taskcore/WorkspaceWm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->members:Ljava/util/Map;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->activities:Ljava/util/Map;

    .line 62
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->removedActivities:Ljava/util/Set;

    .line 69
    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->session:Ldev/duo/taskcore/WorkspaceWm$Session;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->request:Landroid/os/IBinder;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->piTarget:Landroid/os/IBinder;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->cookie:Landroid/os/IBinder;

    iput p6, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->kind:I

    .line 70
    iget-object p1, p2, Ldev/duo/taskcore/WorkspaceWm$Session;->saved:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/duo/taskcore/WorkspaceWm$Saved;

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->members:Ljava/util/Map;

    iget p4, p2, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
