.class Ldev/duo/taskcore/WorkspaceShell$1;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/taskcore/WorkspaceShell;->b(Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ldev/duo/taskcore/WorkspaceShell;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/Handler;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$1;->c:Ldev/duo/taskcore/WorkspaceShell;

    iput-wide p3, p0, Ldev/duo/taskcore/WorkspaceShell$1;->a:J

    iput-wide p5, p0, Ldev/duo/taskcore/WorkspaceShell$1;->b:J

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceShell$1;->a:J

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$1;->c:Ldev/duo/taskcore/WorkspaceShell;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceShell;->a(Ldev/duo/taskcore/WorkspaceShell;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceShell$1;->b:J

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$1;->c:Ldev/duo/taskcore/WorkspaceShell;

    invoke-static {v2}, Ldev/duo/taskcore/WorkspaceShell;->b(Ldev/duo/taskcore/WorkspaceShell;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TaskCoreShell"

    if-gez p1, :cond_1

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workbench image rejected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workbench image "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p0, Ldev/duo/taskcore/WorkspaceShell$1;->b:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " receiver="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 5
    :cond_2
    :try_start_0
    iget-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$1;->c:Ldev/duo/taskcore/WorkspaceShell;

    invoke-static {p1}, Ldev/duo/taskcore/WorkspaceShell;->d(Ldev/duo/taskcore/WorkspaceShell;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$1;->c:Ldev/duo/taskcore/WorkspaceShell;

    invoke-static {p2}, Ldev/duo/taskcore/WorkspaceShell;->c(Ldev/duo/taskcore/WorkspaceShell;)Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    const-string p2, "workbench image refresh failed"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method
