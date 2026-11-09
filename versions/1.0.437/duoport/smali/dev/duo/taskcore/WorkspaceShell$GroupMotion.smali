.class final Ldev/duo/taskcore/WorkspaceShell$GroupMotion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupMotion"
.end annotation


# instance fields
.field final a:Ldev/duo/taskcore/WorkspaceHost;

.field final b:Ldev/duo/taskcore/TaskBinding;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/os/IBinder;

.field e:Landroid/os/IBinder;

.field f:Ljava/lang/Object;

.field g:Ljava/lang/Object;

.field h:Landroid/view/SurfaceControl$Transaction;

.field i:Landroid/view/SurfaceControl;

.field j:Z

.field k:Z

.field l:Z


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/TaskBinding;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/duo/taskcore/WorkspaceHost;",
            "Ldev/duo/taskcore/TaskBinding;",
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->a:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->b:Ldev/duo/taskcore/TaskBinding;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->c:Ljava/util/List;

    return-void
.end method
