.class final Ldev/duo/taskcore/WorkspaceShell$GroupMotion;
.super Ljava/lang/Object;
.source "WorkspaceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupMotion"
.end annotation


# instance fields
.field controller:Ljava/lang/Object;

.field finishToken:Landroid/os/IBinder;

.field finishing:Z

.field final host:Ldev/duo/taskcore/WorkspaceHost;

.field info:Ljava/lang/Object;

.field leash:Landroid/view/SurfaceControl;

.field final main:Ldev/duo/taskcore/TaskBinding;

.field final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/duo/taskcore/TaskBinding;",
            ">;"
        }
    .end annotation
.end field

.field restore:Z

.field returning:Z

.field start:Landroid/view/SurfaceControl$Transaction;

.field token:Landroid/os/IBinder;


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

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->host:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->main:Ldev/duo/taskcore/TaskBinding;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$GroupMotion;->members:Ljava/util/List;

    .line 157
    return-void
.end method
