.class final Ldev/duo/workspaceprobe/b$g0;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g0"
.end annotation


# instance fields
.field final a:Landroid/os/IBinder;

.field b:Landroid/os/IBinder;

.field c:Landroid/os/ResultReceiver;

.field d:Z

.field e:Z

.field final f:Ljava/lang/Runnable;

.field final g:Landroid/os/IBinder$DeathRecipient;

.field final synthetic h:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$RNU5hjgptDnD10opB0p4KAdByQc(Ldev/duo/workspaceprobe/b$g0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$g0;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$lKB99rK60v9fPsWrPXfByHlrHY4(Ldev/duo/workspaceprobe/b$g0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$g0;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$lXtBBsS8AcIM5Gg5Ry8rQ-7NPDg(Ldev/duo/workspaceprobe/b$g0;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/b$g0;->b()V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->D1:Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->a:Landroid/os/IBinder;

    .line 6
    new-instance p1, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b$g0;)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->f:Ljava/lang/Runnable;

    .line 11
    new-instance p1, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b$g0;)V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->g:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "DuoStandby"

    const-string v1, "Automatic clock timed out before display"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    :cond_0
    return-void
.end method

.method private synthetic c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->D1:Landroid/os/Handler;

    new-instance v1, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/b$g0$$ExternalSyntheticLambda2;-><init>(Ldev/duo/workspaceprobe/b$g0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x2

    const-string v1, "DuoStandby"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_8

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object p1

    if-ne p1, p0, :cond_0

    iget-boolean p1, p0, Ldev/duo/workspaceprobe/b$g0;->e:Z

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    move-object v3, p1

    goto :goto_0

    .line 2
    :cond_1
    const-class v3, Landroid/os/ResultReceiver;

    const-string v4, "dev.duo.hookprobe.awake.STOP"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    :goto_0
    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    .line 4
    :cond_2
    const-string v4, "dev.duo.hookprobe.awake.LIFE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    :goto_1
    if-eqz v3, :cond_6

    if-nez p2, :cond_3

    goto/16 :goto_3

    .line 10
    :cond_3
    iget-object v4, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v4}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object v4

    if-ne v4, p0, :cond_5

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v4}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {v4}, Ldev/duo/workspaceprobe/b;->c(Ldev/duo/workspaceprobe/b;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iput-object v3, p0, Ldev/duo/workspaceprobe/b$g0;->c:Landroid/os/ResultReceiver;

    .line 16
    :try_start_0
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$g0;->g:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {p2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    iput-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->b:Landroid/os/IBinder;

    .line 23
    iput-boolean v2, p0, Ldev/duo/workspaceprobe/b$g0;->e:Z

    .line 24
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->c:Landroid/os/ResultReceiver;

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 26
    :try_start_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 27
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-nez p2, :cond_c

    const-class p2, Landroid/os/PowerManager;

    const-string v1, "wakeUp"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    filled-new-array {v2, v3, v5, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MiDuo:TentClock"

    filled-new-array {v1, v0, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 29
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/lang/Exception;)V

    goto/16 :goto_5

    :catch_1
    move-exception p1

    .line 30
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    .line 31
    const-string p2, "Clock process exited before activation"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_5
    :goto_2
    nop

    .line 32
    const/4 p2, 0x3

    invoke-virtual {v3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object p1

    if-ne p1, p0, :cond_c

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 34
    :cond_6
    :goto_3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object p1

    if-ne p1, p0, :cond_7

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    .line 35
    :cond_7
    const-string p1, "Clock READY missing endpoint"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const/4 p2, 0x5

    if-ne p1, p2, :cond_b

    .line 58
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object p2

    if-ne p2, p0, :cond_b

    iget-boolean p2, p0, Ldev/duo/workspaceprobe/b$g0;->e:Z

    if-eqz p2, :cond_b

    .line 59
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->c(Ldev/duo/workspaceprobe/b;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 60
    :cond_9
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    iget-object p1, p1, Ldev/duo/workspaceprobe/b;->D1:Landroid/os/Handler;

    iget-object p2, p0, Ldev/duo/workspaceprobe/b$g0;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 61
    const-string p1, "Automatic awake clock reported visible; visual confirmation pending"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_a
    :goto_4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    return-void

    :cond_b
    if-ne p1, v0, :cond_c

    .line 65
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->l0(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/b$g0;

    move-result-object p1

    if-ne p1, p0, :cond_c

    .line 66
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g0;->h:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)V

    :cond_c
    :goto_5
    return-void
.end method
