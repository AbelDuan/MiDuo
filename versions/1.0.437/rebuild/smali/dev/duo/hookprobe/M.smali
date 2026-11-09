.class final Ldev/duo/hookprobe/M;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/M$a;
    }
.end annotation


# static fields
.field static final a:J = 0x1eL

.field private static final b:I = 0x1000000


# direct methods
.method public static synthetic $r8$lambda$BMcfLJtL-4uY5i-D-x4LXS9x4EM(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/M;->a(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "-c"

    const-string v1, "su"

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/ProcessBuilder;

    const-string v2, "--mount-master"

    filled-new-array {v1, v2, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/ProcessBuilder;

    filled-new-array {v1, v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-array v1, p0, [Ljava/io/IOException;

    .line 7
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, v1}, Ldev/duo/hookprobe/M$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V

    const-string v4, "MiDuoRootRead"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 17
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {p0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 20
    :try_start_0
    invoke-virtual {p1, v5, v6, p0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    :cond_1
    if-eqz p0, :cond_5

    .line 22
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_5

    .line 28
    invoke-virtual {p1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    const/high16 v2, 0x1000000

    if-gt p0, v2, :cond_4

    .line 31
    const/4 p0, 0x0

    aget-object p0, v1, p0

    if-nez p0, :cond_3

    .line 32
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    move-result p1

    if-nez p1, :cond_2

    return-object p0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3
    throw p0

    .line 36
    :cond_4
    new-instance p0, Ldev/duo/hookprobe/M$a;

    invoke-direct {p0}, Ldev/duo/hookprobe/M$a;-><init>()V

    throw p0

    .line 37
    :cond_5
    :try_start_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string v0, "Root \u547d\u4ee4\u8d85\u8fc7 30 \u79d2\u6ca1\u6709\u7ed3\u675f"

    invoke-direct {p0, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 39
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 40
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 43
    throw p0

    .line 44
    :cond_6
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "\u68c0\u67e5\u5df2\u53d6\u6d88"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic a(Ljava/lang/Process;Ljava/io/ByteArrayOutputStream;[Ljava/io/IOException;)V
    .locals 4

    .line 45
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 46
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/high16 v3, 0x1000000

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    .line 49
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    if-eqz p0, :cond_1

    .line 50
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 51
    :cond_1
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    :catch_0
    move-exception p0

    .line 51
    nop

    .line 55
    aput-object p0, p2, v1

    :cond_2
    return-void
.end method
