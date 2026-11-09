.class final Ldev/duo/workspaceprobe/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/r$b;
    }
.end annotation


# static fields
.field static final g:Ljava/lang/String; = "dev.duo.hookprobe.workbench.v1"

.field private static final h:Ljava/lang/String; = "DuoWorkbenchApi"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private c:Ldev/duo/workspaceprobe/r$b;

.field private d:Landroid/net/LocalSocket;

.field private e:Z

.field private f:Z


# direct methods
.method public static synthetic $r8$lambda$8EiCeQ44Kp4APFv68oql5GcmVII(Ldev/duo/workspaceprobe/r;Landroid/net/LocalServerSocket;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/r;->b(Landroid/net/LocalServerSocket;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WYdblwENtrqR56DJYOiISxuaVAw(Ldev/duo/workspaceprobe/r;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/r;->b()V

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/r;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Ldev/duo/workspaceprobe/r$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "inactive"

    invoke-direct {v0, v4, v1, v2, v3}, Ldev/duo/workspaceprobe/r$b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    return-void
.end method

.method static a(Ldev/duo/taskcore/WorkspaceSession$State;Z)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ldev/duo/workspaceprobe/r$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Ldev/duo/taskcore/WorkspaceSession$State;->f:Ldev/duo/taskcore/WorkspaceSession$State;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown workbench state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :pswitch_0
    const-string p0, "active"

    return-object p0

    .line 16
    :pswitch_1
    const-string p0, "entering"

    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "paused"

    return-object p0

    .line 18
    :cond_1
    :goto_0
    const-string p0, "exiting"

    return-object p0

    .line 19
    :cond_2
    const-string p0, "inactive"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/net/LocalServerSocket;)V
    .locals 8

    .line 45
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {v2}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 52
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v6

    .line 53
    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    iget-object v3, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :try_start_3
    iget-object v4, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 63
    iput-object v2, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldev/duo/workspaceprobe/r;->f:Z

    .line 65
    iget-object v2, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 67
    :try_start_4
    invoke-static {v4}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 68
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 48
    :catch_0
    move-exception v3

    .line 69
    invoke-static {v2}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V

    .line 70
    const-string v2, "DuoWorkbenchApi"

    const-string v4, "Scene client rejected"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 48
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 67
    :catch_1
    move-exception v2

    .line 83
    :try_start_7
    const-string v3, "DuoWorkbenchApi"

    const-string v4, "Scene API stopped"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 86
    iget-object v2, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_8
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/r;->e:Z

    .line 88
    iget-object v1, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 89
    iput-object v0, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 90
    iget-object v0, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_2

    .line 92
    invoke-static {v1}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V

    .line 93
    :cond_2
    :try_start_9
    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 94
    const-string v0, "DuoWorkbenchApi"

    const-string v1, "Scene listener close failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 95
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1

    .line 96
    :goto_2
    iget-object v3, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 97
    :try_start_b
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/r;->e:Z

    .line 98
    iget-object v1, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 99
    iput-object v0, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 100
    iget-object v0, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v1, :cond_3

    .line 102
    invoke-static {v1}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V

    .line 103
    :cond_3
    :try_start_c
    invoke-virtual {p1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 104
    const-string v0, "DuoWorkbenchApi"

    const-string v1, "Scene listener close failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_3
    throw v2

    :catchall_3
    move-exception p1

    .line 106
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw p1
.end method

.method private static a(Landroid/net/LocalSocket;)V
    .locals 2

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 108
    const-string v0, "DuoWorkbenchApi"

    const-string v1, "Scene socket close failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private b()V
    .locals 4

    .line 2
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/r;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Ldev/duo/workspaceprobe/r;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 7
    const-string v2, "DuoWorkbenchApi"

    const-string v3, "Scene writer interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    monitor-exit v0

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    .line 11
    monitor-exit v0

    :goto_2
    return-void

    :cond_2
    nop

    .line 12
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/r;->f:Z

    .line 13
    iget-object v1, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    .line 14
    iget-object v2, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v2}, Ldev/duo/workspaceprobe/r$b;->a()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 19
    iget-object v2, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    if-ne v3, v1, :cond_3

    const/4 v3, 0x0

    iput-object v3, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    :cond_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    invoke-static {v1}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalSocket;)V

    .line 21
    const-string v1, "DuoWorkbenchApi"

    const-string v2, "Scene client disconnected"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 22
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 3
    :catchall_1
    move-exception v1

    .line 23
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private synthetic b(Landroid/net/LocalServerSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/r;->a(Landroid/net/LocalServerSocket;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 30
    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string v1, "dev.duo.hookprobe.workbench.v1"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    iget-object v1, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Ldev/duo/workspaceprobe/r;->e:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ldev/duo/workspaceprobe/r$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Ldev/duo/workspaceprobe/r$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/r;)V

    const-string v4, "DuoSceneWrite"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 38
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Ldev/duo/workspaceprobe/r$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Ldev/duo/workspaceprobe/r$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/r;Landroid/net/LocalServerSocket;)V

    const-string v0, "DuoSceneAccept"

    invoke-direct {v1, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 41
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 42
    const-string v0, "DuoWorkbenchApi"

    const-string v1, "Scene API ready dev.duo.hookprobe.workbench.v1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 43
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 44
    const-string v1, "DuoWorkbenchApi"

    const-string v2, "Scene API unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method a(Ldev/duo/taskcore/WorkspaceSession$State;ZJ)V
    .locals 4

    .line 20
    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/r;->a(Ldev/duo/taskcore/WorkspaceSession$State;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/duo/workspaceprobe/r;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object p3, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    monitor-enter p3

    .line 22
    :try_start_0
    iget-object p4, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    iget-object p4, p4, Ldev/duo/workspaceprobe/r$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    iget-object p4, p4, Ldev/duo/workspaceprobe/r$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    monitor-exit p3

    return-void

    .line 23
    :cond_0
    new-instance p4, Ldev/duo/workspaceprobe/r$b;

    iget-object v0, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    iget-wide v0, v0, Ldev/duo/workspaceprobe/r$b;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p4, p1, p2, v0, v1}, Ldev/duo/workspaceprobe/r$b;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object p4, p0, Ldev/duo/workspaceprobe/r;->c:Ldev/duo/workspaceprobe/r$b;

    .line 24
    iget-object p1, p0, Ldev/duo/workspaceprobe/r;->d:Landroid/net/LocalSocket;

    if-eqz p1, :cond_1

    .line 25
    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/r;->f:Z

    .line 26
    iget-object p1, p0, Ldev/duo/workspaceprobe/r;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 28
    :cond_1
    monitor-exit p3

    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
