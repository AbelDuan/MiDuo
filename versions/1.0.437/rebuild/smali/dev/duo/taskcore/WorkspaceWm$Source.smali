.class final Ldev/duo/taskcore/WorkspaceWm$Source;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceWm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Source"
.end annotation


# instance fields
.field final a:Ldev/duo/taskcore/WorkspaceWm$Session;

.field final b:Landroid/os/IBinder;

.field final c:Landroid/os/IBinder;

.field final d:Landroid/os/IBinder;

.field final e:I

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Z

.field m:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field n:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

.field final synthetic o:Ldev/duo/taskcore/WorkspaceWm;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceWm;Ldev/duo/taskcore/WorkspaceWm$Session;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->o:Ldev/duo/taskcore/WorkspaceWm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->f:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->g:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->h:Ljava/util/Set;

    .line 11
    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->a:Ldev/duo/taskcore/WorkspaceWm$Session;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->b:Landroid/os/IBinder;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->c:Landroid/os/IBinder;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->d:Landroid/os/IBinder;

    iput p6, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->e:I

    .line 12
    iget-object p1, p2, Ldev/duo/taskcore/WorkspaceWm$Session;->f:Ljava/util/Map;

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

    iget-object p3, p0, Ldev/duo/taskcore/WorkspaceWm$Source;->f:Ljava/util/Map;

    iget p4, p2, Ldev/duo/taskcore/WorkspaceWm$Saved;->a:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p2, p2, Ldev/duo/taskcore/WorkspaceWm$Saved;->f:Landroid/os/IBinder;

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
