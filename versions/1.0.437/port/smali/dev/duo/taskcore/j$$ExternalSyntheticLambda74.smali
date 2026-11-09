.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Ldev/duo/taskcore/WorkspaceShell$Pending;

.field public final synthetic f$3:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$4:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/IBinder;Ldev/duo/taskcore/WorkspaceShell$Pending;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$2:Ldev/duo/taskcore/WorkspaceShell$Pending;

    iput-object p4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$3:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$4:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iput-object p6, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$2:Ldev/duo/taskcore/WorkspaceShell$Pending;

    iget-object v3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$3:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$4:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iget-object v5, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda74;->f$5:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$6rW-icZmcX5qJDQci68A9hHin_o(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/IBinder;Ldev/duo/taskcore/WorkspaceShell$Pending;Landroid/view/SurfaceControl$Transaction;Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
