.class public final Ldev/duo/hookprobe/BugCaptureService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field static final e:Ljava/lang/String; = "com.lsposed.miduo.STOP_BUG_CAPTURE"

.field static volatile f:Z = false

.field private static final g:I = 0x14c

.field private static final h:J = 0xafc8L


# instance fields
.field private final a:Landroid/os/Handler;

.field private volatile b:Ljava/lang/Process;

.field private volatile c:Ljava/lang/String;

.field private volatile d:J


# direct methods
.method public static synthetic $r8$lambda$YT_sA3KAuYq71QfEKwSX7h-r0ps(Ldev/duo/hookprobe/BugCaptureService;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$b-KsxFPk8ykwHChClKWNM4rdOac(Ldev/duo/hookprobe/BugCaptureService;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$o573y9KZUjZMdMAKYTHEKxg3nYY(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$oeg6V0x8FVN02Lj6qoJxLpzaYww(Ldev/duo/hookprobe/BugCaptureService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wZzcxwjXbmg93apFKbq6A4VpY0c(Ldev/duo/hookprobe/BugCaptureService;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$zR65-mBIOsfz9PtWY57x-ZtPgbs(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/BugCaptureService;->a:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic a(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-string v0, "bug_capture"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 13

    .line 2
    const-string v0, "\u6293\u53d6\u5931\u8d25\uff1a"

    const-string v1, "\u7b49\u5f85\u65e5\u5fd7\u9000\u51fa\u88ab\u4e2d\u65ad"

    const-string v2, "Root \u5305\u88c5\u8fdb\u7a0b\u672a\u53ca\u65f6\u9000\u51fa\uff1b\u65e5\u5fd7\u5b50\u8fdb\u7a0b\u6709\u72ec\u7acb\u8d85\u65f6"

    const-string v3, "DuoBugCapture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bug-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "yyyyMMdd-HHmmss-SSS"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 3
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->f()V

    .line 7
    :try_start_0
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 8
    :try_start_1
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "file"

    invoke-interface {v5, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 10
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 13
    const/4 v5, 0x0

    const-wide/32 v7, 0xafc8

    :try_start_2
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    if-nez v9, :cond_4

    .line 14
    new-instance v9, Ljava/lang/ProcessBuilder;

    invoke-static {}, Ldev/duo/hookprobe/j;->a()Ljava/lang/String;

    move-result-object v10

    const-string v11, "su"

    const-string v12, "-c"

    filled-new-array {v11, v12, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    iput-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    .line 15
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->b()V

    .line 16
    :cond_0
    new-instance v9, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :try_start_3
    invoke-static {v9}, Ldev/duo/hookprobe/j;->a(Ljava/io/InputStream;)V

    .line 18
    const-string v10, "\u6293\u53d6\u4e2d\uff1a\u8bf7\u53bb\u590d\u73b0\uff0c\u5b8c\u6210\u540e\u7ed3\u675f\u6293\u53d6"

    invoke-direct {p0, v10}, Ldev/duo/hookprobe/BugCaptureService;->b(Ljava/lang/String;)V

    .line 19
    array-length v4, v4

    const v10, 0xfff000

    sub-int/2addr v10, v4

    int-to-long v10, v10

    invoke-static {v9, v6, v10, v11}, Ldev/duo/hookprobe/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    const-string v4, "\u65e5\u5fd7\u5df2\u8fbe\u5230 16 MiB \u4e0a\u9650"

    iput-object v4, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    .line 21
    :cond_1
    iget-object v4, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 22
    iget-object v4, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 28
    :try_start_5
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->b()V

    .line 29
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v9, :cond_8

    .line 32
    :try_start_6
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v7, v8, v10}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 33
    invoke-virtual {v9}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 34
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v2

    .line 37
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 38
    invoke-virtual {v9}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 39
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    :goto_0
    nop

    .line 39
    :cond_2
    nop

    .line 41
    iput-object v5, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_4

    .line 42
    :cond_3
    :try_start_8
    new-instance v4, Ljava/io/IOException;

    const-string v10, "\u65e5\u5fd7\u8fdb\u7a0b\u63d0\u524d\u9000\u51fa\uff0c\u8bf7\u67e5\u770b\u62a5\u544a\u672b\u5c3e\u7684\u9519\u8bef"

    invoke-direct {v4, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 20
    :catchall_0
    move-exception v4

    .line 43
    :try_start_9
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v9

    :try_start_a
    invoke-virtual {v4, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4

    .line 44
    :cond_4
    new-instance v4, Ljava/io/IOException;

    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 15
    :catchall_2
    move-exception v4

    goto/16 :goto_6

    :catch_1
    move-exception v4

    .line 56
    :try_start_b
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 57
    :cond_5
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    .line 56
    :goto_2
    nop

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6293\u53d6\u7ed3\u675f\uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 60
    :try_start_c
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->b()V

    .line 61
    iget-object v4, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v4, :cond_7

    .line 64
    :try_start_d
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 65
    invoke-virtual {v4}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 66
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_3

    :catch_2
    move-exception v2

    .line 69
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 70
    invoke-virtual {v4}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 71
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :goto_3
    nop

    .line 71
    :cond_6
    nop

    .line 73
    iput-object v5, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    :cond_7
    move-object v4, v9

    .line 76
    :cond_8
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n\u505c\u6b62\u8bf7\u6c42\u65f6\u95f4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v7, p0, Ldev/duo/hookprobe/BugCaptureService;->d:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_9

    const-string v2, "\u81ea\u52a8\u9650\u91cf/\u9519\u8bef"

    goto :goto_5

    .line 77
    :cond_9
    new-instance v2, Ljava/util/Date;

    iget-wide v7, p0, Ldev/duo/hookprobe/BugCaptureService;->d:J

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u7ed3\u675f\u65f6\u95f4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u7ed3\u679c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 79
    array-length v2, v1

    const/16 v5, 0x1000

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 80
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_9

    .line 81
    :goto_6
    :try_start_10
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->b()V

    .line 82
    iget-object v9, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v9, :cond_b

    .line 85
    :try_start_11
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v7, v8, v10}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 86
    invoke-virtual {v9}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 87
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_7

    :catch_3
    move-exception v2

    .line 90
    :try_start_12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 91
    invoke-virtual {v9}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    .line 92
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_7
    nop

    .line 92
    :cond_a
    nop

    .line 94
    iput-object v5, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    .line 96
    :cond_b
    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 34
    :catchall_3
    move-exception v1

    .line 97
    :try_start_13
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v2

    :try_start_14
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_4

    .line 80
    :catch_4
    move-exception v1

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :goto_9
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureService;->a:Landroid/os/Handler;

    new-instance v1, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v4}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/BugCaptureService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    .line 144
    iget-object v1, p0, Ldev/duo/hookprobe/BugCaptureService;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "capturing"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->b(Ljava/lang/String;)V

    .line 147
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 148
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 149
    const-string p0, "bug-"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ".txt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "DuoBugCapture"

    const-string v2, "\u5173\u95ed\u65e5\u5fd7\u8f93\u5165\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 12

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiDuo \u95ee\u9898\u590d\u73b0\u65e5\u5fd7\n\u5f00\u59cb\u65f6\u95f4="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    const-string v1, "\n\u8bbe\u5907="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    const-string v2, "\nROM="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nAndroid SDK="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12
    const-string v2, "\n\u8d44\u6e90\u914d\u7f6e="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 13
    const-string v0, "MiDuo\u6784\u5efa\u6807\u8bc6="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1.0.415-1-05e92cb34b03"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v10, "com.miui.securitycenter"

    const-string v11, "com.android.quicksearchbox"

    const-string v5, "com.ss.android.ugc.aweme"

    const-string v6, "com.miui.home"

    const-string v7, "com.miui.personalassistant"

    const-string v8, "com.android.systemui"

    const-string v9, "com.miui.gallery"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v0, 0x3d

    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    aget-object v7, v4, v6

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 18
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " ("

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "=\u672a\u5b89\u88c5\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Ldev/duo/hookprobe/L;->c()Lio/github/libxposed/service/XposedService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 22
    const-string v0, "MiDuo\u914d\u7f6e=LSPosed\u672a\u8fde\u63a5\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 25
    :cond_1
    :try_start_1
    new-instance v6, Ldev/duo/hookprobe/o;

    invoke-direct {v6, v4}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    iget-object v4, v6, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    .line 26
    const-string v6, "com.ss.android.ugc.aweme"

    .line 27
    const-string v8, "MiDuo master="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " awemeDuo="

    .line 28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v10

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hiddenTops="

    .line 29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v6}, Ldev/duo/hookprobe/P;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " innerNativeBar="

    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v6}, Ldev/duo/hookprobe/P;->d(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outerScale="

    .line 31
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4, v6}, Ldev/duo/hookprobe/P;->g(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    const-string v8, "outer"

    const-string v9, "inner"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    :goto_2
    const/4 v9, 0x2

    if-ge v5, v9, :cond_2

    aget-object v9, v8, v5

    .line 33
    const-string v10, "\u6296\u97f3 "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " topPx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4, v6, v9}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fit="

    .line 34
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ldev/duo/hookprobe/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 36
    :cond_2
    const-string v5, "\u6296\u97f3 nonDuoOuterPx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v6}, Ldev/duo/hookprobe/P;->e(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 39
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 42
    const-string v9, "_global/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    instance-of v9, v6, Ljava/lang/Boolean;

    if-nez v9, :cond_4

    instance-of v9, v6, Ljava/lang/Integer;

    if-nez v9, :cond_4

    goto :goto_3

    .line 43
    :cond_4
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".*(license|token|secret|key|device|uuid|sign|pay|account).*"

    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 44
    :cond_5
    invoke-virtual {v5, v8, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 46
    :cond_6
    const-string v4, "MiDuo\u5168\u5c40\u8bbe\u7f6e("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    nop

    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 34
    :catch_1
    move-exception v0

    .line 50
    const-string v1, "MiDuo\u914d\u7f6e\u8bfb\u53d6\u5931\u8d25="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :goto_5
    const-string v0, "\n\u8986\u76d6\u6a21\u5757\uff1a\u684c\u9762/\u8d1f\u4e00\u5c4f/\u4fa7\u680f/Dock/\u641c\u7d22/\u53d6\u8272/\u5f85\u673a/\u9501\u5c4f/\u58c1\u7eb8/\u5206\u5c4f/\u5de5\u4f5c\u53f0/\u5f00\u5408\u52a8\u753b\u5f15\u64ce/\u76f8\u518c\u4e0e\u5c0f\u7ec4\u4ef6\u9875/\u667a\u80fd\u52a9\u7406\u9009\u62e9\u9875/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    const-string v1, "\u6388\u6743\u4e0e\u8ba1\u8d39/\u5f15\u5bfc\uff08\u65e5\u5fd7\u6807\u7b7e Duo*\u3001MiDuo*\u3001TaskCore*\uff0c\u53e6\u542b\u5168\u90e8\u8b66\u544a\u9519\u8bef\u4e0e\u7cfb\u7edf\u7a97\u53e3/\u5c0f\u7ec4\u4ef6/\u5d29\u6e83\u5173\u952e\u65e5\u5fd7\uff09\u3002\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v0, "\u4ee5\u4e0b\u5185\u5bb9\u53ea\u7528\u4e8e\u5b9a\u4f4d\uff0c\u53ef\u80fd\u542b\u6b63\u5728\u4f7f\u7528\u7684\u5e94\u7528\u3001\u9875\u9762\u4e0e\u62a5\u9519\u4fe1\u606f\uff1b\u4e0d\u542b\u622a\u56fe\u3001\u804a\u5929\u4e0e\u7167\u7247\u5185\u5bb9\u3002\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Ldev/duo/hookprobe/BugCaptureService;->c:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/hookprobe/BugCaptureService;->d:J

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6b63\u5728\u7ed3\u675f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->b(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureService;->b()V

    .line 8
    iget-object p1, p0, Ldev/duo/hookprobe/BugCaptureService;->a:Landroid/os/Handler;

    new-instance v0, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/BugCaptureService;)V

    const-wide/32 v1, 0xafc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    const-string v0, "\u5df2\u8fbe\u5230 2 \u5206\u949f\u4e0a\u9650"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/BugCaptureService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureService;->b:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Process;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    array-length v1, v0

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 5
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_2

    .line 6
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e7\u62a5\u544a\u5220\u9664\u5931\u8d25\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DuoBugCapture"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    sget-boolean v0, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "\u6293\u53d6\u670d\u52a1\u88ab\u7cfb\u7edf\u7ed3\u675f"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/BugCaptureService;->c(Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.lsposed.miduo.STOP_BUG_CAPTURE"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    sget-boolean p1, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    if-eqz p1, :cond_1

    return p2

    .line 6
    :cond_1
    const-class p1, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 7
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Bug \u6293\u53d6"

    const-string v2, "bug_capture"

    invoke-direct {v0, v2, v1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/duo/hookprobe/BugCaptureActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 9
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ldev/duo/hookprobe/BugCaptureService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-static {p0, v0, p3, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 10
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    const v1, 0x1080041

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "MiDuo \u6b63\u5728\u6293\u53d6\u95ee\u9898\u65e5\u5fd7"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 12
    const-string v1, "\u8bf7\u590d\u73b0\u95ee\u9898\uff0c\u5b8c\u6210\u540e\u70b9\u7ed3\u675f\uff1b\u6700\u591a 2 \u5206\u949f"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$Action$Builder;

    const/4 v2, 0x0

    const-string v3, "\u7ed3\u675f\u6293\u53d6"

    invoke-direct {v1, v2, v3, p3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 14
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 15
    const/16 p3, 0x14c

    const/16 v1, 0x800

    invoke-virtual {p0, p3, p1, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 16
    sput-boolean v0, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    .line 17
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "capturing"

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    const-string p1, "\u7b49\u5f85 Root \u6388\u6743\u2026"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->b(Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Ldev/duo/hookprobe/BugCaptureService;->a:Landroid/os/Handler;

    new-instance p3, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/BugCaptureService;)V

    const-wide/32 v0, 0x1d4c0

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Ldev/duo/hookprobe/BugCaptureService$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/BugCaptureService;)V

    const-string v0, "MiDuo-bug-capture"

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return p2

    .line 21
    :cond_2
    :goto_0
    sget-boolean p1, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    if-eqz p1, :cond_3

    const-string p1, "\u7528\u6237\u7ed3\u675f\u590d\u73b0"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_1
    return p2
.end method

.method public onTimeout(I)V
    .locals 0

    .line 1
    const-string p1, "\u7cfb\u7edf\u7ed3\u675f\u77ed\u65f6\u6293\u53d6"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public onTimeout(II)V
    .locals 0

    .line 3
    const-string p1, "\u7cfb\u7edf\u7ed3\u675f\u77ed\u65f6\u6293\u53d6"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureService;->c(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
