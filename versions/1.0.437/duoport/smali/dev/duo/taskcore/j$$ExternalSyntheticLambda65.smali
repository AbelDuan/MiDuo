.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceSession$Done;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Ldev/duo/taskcore/TaskBinding;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;Ldev/duo/taskcore/TaskBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$1:Ldev/duo/taskcore/WorkspaceSession$Done;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$3:Ldev/duo/taskcore/TaskBinding;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$1:Ldev/duo/taskcore/WorkspaceSession$Done;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda65;->f$3:Ldev/duo/taskcore/TaskBinding;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$9iK2wjZ6LwTnUrGBw0Q5-HZxakw(Ldev/duo/taskcore/WorkspaceShell;Ldev/duo/taskcore/WorkspaceSession$Done;Landroid/os/Handler;Ldev/duo/taskcore/TaskBinding;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
