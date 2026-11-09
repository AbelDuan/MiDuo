.class final Ldev/duo/hookprobe/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/C$a;
    }
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:Ljava/lang/String; = "lhasa"

.field private static final e:Ljava/lang/String; = "8.01.02.6325"

.field private static final f:Ljava/lang/String; = "2.2.1"

.field private static final g:I = 0x1ee8

.field private static final h:Ljava/lang/String; = "org.lsposed.manager"

.field private static final i:Ljava/lang/String; = "/data/adb/lspd/config/modules_config.db"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    .line 100
    const-string v0, "(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, -0x1

    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static a()Ldev/duo/hookprobe/C$a;
    .locals 9

    .line 52
    const-string v0, "\uff09"

    const-string v1, "Root"

    const-string v2, "\u3002\u6253\u5f00 KernelSU \u2192 \u8d85\u7ea7\u7528\u6237\uff08\u5e94\u7528\u6388\u6743\uff09\u2192 \u627e\u5230 MiDuo \u2192 \u6253\u5f00\u5141\u8bb8\uff0c\u56de\u5230 MiDuo \u518d\u70b9\u4e00\u6b21\u5f00\u5173"

    .line 54
    const/4 v3, 0x2

    :try_start_0
    const-string v4, "id -u"

    invoke-static {v4}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 55
    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ldev/duo/hookprobe/C$a;

    const-string v5, "\u5df2\u6388\u6743\uff08uid=0\uff09"

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 56
    :cond_0
    new-instance v5, Ldev/duo/hookprobe/C$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "su \u8fd4\u56de\u7684\u4e0d\u662f root\uff08"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v4, "\u7a7a"

    .line 57
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v1, v3, v4}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 55
    :catch_0
    move-exception v4

    .line 66
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 67
    new-instance v5, Ldev/duo/hookprobe/C$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u672a\u6388\u6743\u6216\u88ab\u62d2\u7edd"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\uff08"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v3, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v5

    .line 55
    :catch_1
    move-exception v0

    .line 68
    new-instance v0, Ldev/duo/hookprobe/C$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6ca1\u6709 su\uff0c\u6216\u88ab\u62d2\u7edd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 55
    :catch_2
    move-exception v0

    .line 69
    new-instance v4, Ldev/duo/hookprobe/C$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\uff0c\u53ef\u80fd\u5728\u7b49\u5f85\u6388\u6743\u5f39\u7a97"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v3, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4

    .line 55
    :catch_3
    move-exception v0

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 71
    new-instance v0, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u68c0\u67e5\u5df2\u53d6\u6d88"

    invoke-direct {v0, v1, v3, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;
    .locals 11

    .line 72
    const-string p0, "\u5c4f\u5e55\u5bc6\u5ea6"

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "wm density"

    invoke-static {v1}, Ldev/duo/hookprobe/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ldev/duo/hookprobe/M$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    const-string v2, "Physical density"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u8bfb\u4e0d\u5230\u5c4f\u5e55\u5bc6\u5ea6"

    invoke-direct {v1, p0, v0, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 84
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_3

    aget-object v8, v1, v7

    .line 87
    invoke-static {v8}, Ldev/duo/hookprobe/C;->a(Ljava/lang/String;)I

    move-result v9

    .line 88
    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lez v9, :cond_1

    move v6, v9

    goto :goto_1

    .line 89
    :cond_1
    const-string v10, "Override density"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-lez v9, :cond_2

    if-lez v6, :cond_2

    if-eq v9, v6, :cond_2

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u539f\u88c5 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\uff0c\u73b0\u5728 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ldev/duo/hookprobe/C$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6539\u8fc7 DPI\uff08"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\uff1b"

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u3002\u8bf7\u5230\u5f00\u53d1\u8005\u9009\u9879\u628a\u6700\u5c0f\u5bbd\u5ea6\u6062\u590d\u9ed8\u8ba4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 94
    :cond_4
    new-instance v0, Ldev/duo/hookprobe/C$a;

    const-string v1, "\u6ca1\u6539\u8fc7"

    invoke-direct {v0, p0, v5, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    .line 95
    new-instance v2, Ldev/duo/hookprobe/C$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bfb\u53d6\u5931\u8d25\uff08"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff09"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 94
    :catch_1
    move-exception v1

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 97
    new-instance v1, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u68c0\u67e5\u5df2\u53d6\u6d88"

    invoke-direct {v1, p0, v0, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 94
    :catch_2
    move-exception v1

    .line 98
    new-instance v2, Ldev/duo/hookprobe/C$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 94
    :catch_3
    move-exception v1

    .line 99
    new-instance v2, Ldev/duo/hookprobe/C$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 103
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 104
    const-string p1, "\\d+(\\.\\d+){2,}"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 105
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 104
    :catch_0
    move-exception p0

    .line 109
    const-string p0, "\u672a\u5b89\u88c5"

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    const-string v0, ""

    const-string v1, "\\s"

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "mastercheck"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u5efa\u7acb\u7f13\u5b58\u76ee\u5f55"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "modules_config.db"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "modules_config.db-wal"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string v6, "modules_config.db-shm"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    filled-new-array {v3, v4, v5}, [Ljava/io/File;

    move-result-object v2

    .line 114
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    new-array v6, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v5, p1, v6}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 115
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {}, Ljava/util/Base64;->getMimeDecoder()Ljava/util/Base64$Decoder;

    move-result-object v5

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    new-array v0, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 116
    :cond_2
    aget-object p1, v2, v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 117
    :try_start_1
    const-string v0, "select apk_path from modules where module_pkg_name=?"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 118
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_3
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_1
    if-ge v3, v4, :cond_4

    .line 121
    aget-object p0, v2, v3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object p2

    .line 118
    :catchall_0
    move-exception p2

    .line 121
    if-eqz p0, :cond_5

    .line 122
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 121
    :catchall_2
    move-exception p0

    .line 122
    if-eqz p1, :cond_6

    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 123
    :cond_6
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 115
    :catchall_4
    move-exception p0

    .line 123
    nop

    :goto_4
    if-ge v3, v4, :cond_7

    .line 128
    aget-object p1, v2, v3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 129
    :cond_7
    throw p0
.end method

.method static a(Landroid/content/Context;ZLjava/lang/String;IJLjava/util/Set;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ldev/duo/hookprobe/C$a;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "lhasa"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "\uff09"

    const-string v12, "\u673a\u578b"

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v10, :cond_0

    new-instance v9, Ldev/duo/hookprobe/C$a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u5c0f\u7c73 18 Fold\uff08"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v12, v13, v8}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v10, Ldev/duo/hookprobe/C$a;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u8fd9\u53f0\u662f "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "\uff08"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\uff09\uff0cMiDuo \u53ea\u9002\u914d\u5c0f\u7c73 18 Fold"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v12, v14, v8}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v9, v10

    .line 5
    :goto_0
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Ldev/duo/hookprobe/C;->a()Ldev/duo/hookprobe/C$a;

    move-result-object v8

    .line 9
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v9, "com.miui.home"

    invoke-static {v0, v9}, Ldev/duo/hookprobe/C;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    const-string v10, "com.miui.personalassistant"

    invoke-static {v0, v10}, Ldev/duo/hookprobe/C;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    const-string v12, "8.01.02.6325"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "\u6ca1\u8bfb\u5230\u7248\u672c"

    const-string v14, "\u5c0f\u7c73\u684c\u9762"

    if-eqz v13, :cond_1

    new-instance v12, Ldev/duo/hookprobe/C$a;

    const/4 v13, 0x0

    invoke-direct {v12, v14, v13, v9}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v13, Ldev/duo/hookprobe/C$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object v9, v15

    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\uff0c\u9002\u914d\u7684\u662f "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-direct {v13, v14, v9, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v12, v13

    .line 14
    :goto_1
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Ldev/duo/hookprobe/C$a;

    const-string v9, "\u672a\u5b89\u88c5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\uff1b\u7ec4\u4ef6\u63a5\u53e3\u5728\u8fd0\u884c\u65f6\u6838\u5bf9\uff0c\u4e0d\u9650\u5b9a\u7248\u672c\u53f7"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "\u667a\u80fd\u52a9\u7406"

    invoke-direct {v0, v12, v9, v10}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "2.2.1"

    if-eqz p1, :cond_4

    const/16 v10, 0x66

    if-ne v2, v10, :cond_4

    const-wide/16 v12, 0x1ee8

    cmp-long v10, v3, v12

    if-nez v10, :cond_4

    if-eqz v1, :cond_4

    .line 20
    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    const-string v12, "LSPosed"

    if-nez p1, :cond_5

    .line 22
    new-instance v1, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u672a\u8fde\u63a5\uff0c\u8bf7\u5728 LSPosed \u4e2d\u542f\u7528 MiDuo"

    const/4 v9, 0x2

    invoke-direct {v1, v12, v9, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    const-string v13, " / API "

    const-string v14, " / "

    if-eqz v10, :cond_6

    .line 24
    new-instance v9, Ldev/duo/hookprobe/C$a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 26
    :cond_6
    new-instance v10, Ldev/duo/hookprobe/C$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    goto :goto_4

    :cond_7
    move-object v15, v1

    :cond_8
    :goto_4
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u9700\u8981 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1ee8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / API 102"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-direct {v10, v12, v9, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :goto_5
    invoke-static/range {p0 .. p0}, Ldev/duo/hookprobe/C;->b(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 30
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v0, "\u4f5c\u7528\u57df"

    if-nez p1, :cond_a

    .line 33
    new-instance v1, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u672a\u8fde\u63a5 LSPosed\uff0c\u6ca1\u6cd5\u6838\u5bf9"

    const/4 v9, 0x2

    invoke-direct {v1, v0, v9, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_a
    if-eqz v6, :cond_b

    .line 35
    new-instance v1, Ldev/duo/hookprobe/C$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u5931\u8d25\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x2

    invoke-direct {v1, v0, v9, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 37
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    sget-object v2, Ldev/duo/hookprobe/P;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v5, :cond_d

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_d
    invoke-static {v3}, Ldev/duo/hookprobe/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 39
    :cond_e
    sget-object v2, Ldev/duo/hookprobe/P;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v5, :cond_10

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_10
    invoke-static {v3}, Ldev/duo/hookprobe/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 40
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "\u4f5c\u7528\u57df\uff08\u6838\u5fc3\u4e94\u9879\uff09"

    const-string v4, "\u3001"

    if-eqz v2, :cond_12

    new-instance v0, Ldev/duo/hookprobe/C$a;

    const-string v2, "\u7cfb\u7edf\u6846\u67b6\u3001\u7cfb\u7edf\u754c\u9762\u3001\u5c0f\u7c73\u684c\u9762\u3001\u667a\u80fd\u52a9\u7406\u3001\u7cfb\u7edf\u641c\u7d22\u90fd\u5df2\u52fe\u9009"

    const/4 v13, 0x0

    invoke-direct {v0, v3, v13, v2}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_8

    .line 41
    :cond_12
    new-instance v2, Ldev/duo/hookprobe/C$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f3a\u5c11"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u3002\u5230 LSPosed \u7ba1\u7406\u5668 \u2192 \u6a21\u5757 \u2192 MiDuo \u2192 \u4f5c\u7528\u57df\u91cc\u52fe\u4e0a\uff0c\u6216\u5728 MiDuo \u9996\u9875\u70b9\u201c\u8865\u9f50\u4f5c\u7528\u57df\u201d"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    invoke-direct {v2, v3, v9, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    .line 42
    :goto_8
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ldev/duo/hookprobe/C$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6ca1\u52fe"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u5bf9\u5e94\u529f\u80fd\u4e0d\u53ef\u7528\uff0c\u4e0d\u5f71\u54cd\u6253\u5f00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u4f5c\u7528\u57df\uff08\u9644\u52a0\u529f\u80fd\uff09"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_13
    :goto_9
    iget v0, v8, Ldev/duo/hookprobe/C$a;->c:I

    if-eqz v0, :cond_14

    return-object v7

    .line 49
    :cond_14
    invoke-static/range {p0 .. p0}, Ldev/duo/hookprobe/C;->a(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static/range {p0 .. p0}, Ldev/duo/hookprobe/C;->c(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static/range {p0 .. p0}, Ldev/duo/hookprobe/g;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v7
.end method

.method private static b(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "org.lsposed.manager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2
    new-instance v0, Ldev/duo/hookprobe/C$a;

    const-string v2, "LSPosed \u7ba1\u7406\u5668"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Ldev/duo/hookprobe/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ldev/duo/hookprobe/C$a;
    .locals 10

    const-string v0, "\uff09"

    const-string v1, "\u8bfb\u53d6\u5931\u8d25\uff08"

    const-string v2, "LSPosed \u767b\u8bb0\u7684\u5b89\u88c5\u5305"

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 32
    const/4 v4, 0x2

    :try_start_0
    const-string v5, "base64 /data/adb/lspd/config/modules_config.db 2>/dev/null; echo @@; test -f /data/adb/lspd/config/modules_config.db-wal && base64 /data/adb/lspd/config/modules_config.db-wal; echo @@; true"

    invoke-static {v5}, Ldev/duo/hookprobe/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ldev/duo/hookprobe/M$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    const-string v6, "@@\n"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 44
    array-length v6, v5

    if-lt v6, v4, :cond_4

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    :try_start_1
    aget-object v7, v5, v6

    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    aget-object v5, v5, v9

    goto :goto_0

    .line 48
    :cond_1
    const-string v5, ""

    .line 47
    :goto_0
    nop

    .line 48
    invoke-static {p0, v7, v5}, Ldev/duo/hookprobe/C;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Ldev/duo/hookprobe/C$a;

    const-string v3, "\u4e0e\u5f53\u524d\u5b89\u88c5\u4e00\u81f4"

    invoke-direct {p0, v2, v6, v3}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 50
    :cond_2
    new-instance v3, Ldev/duo/hookprobe/C$a;

    if-nez p0, :cond_3

    const-string p0, "LSPosed \u91cc\u6ca1\u6709 MiDuo"

    goto :goto_1

    .line 51
    :cond_3
    const-string p0, "\u767b\u8bb0\u7684\u8fd8\u662f\u65e7\u5b89\u88c5\u5305\u3002\u6253\u5f00 LSPosed \u7ba1\u7406\u5668\uff0c\u628a MiDuo \u5173\u4e00\u6b21\u518d\u6253\u5f00"

    .line 50
    :goto_1
    nop

    .line 51
    invoke-direct {v3, v2, v4, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 47
    :catch_0
    move-exception p0

    .line 53
    new-instance v3, Ldev/duo/hookprobe/C$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v2, v4, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 54
    :cond_4
    :goto_2
    new-instance p0, Ldev/duo/hookprobe/C$a;

    const-string v0, "\u8bfb\u4e0d\u5230 LSPosed \u914d\u7f6e"

    invoke-direct {p0, v2, v4, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 55
    new-instance v3, Ldev/duo/hookprobe/C$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v2, v4, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    .line 54
    :catch_2
    move-exception p0

    .line 56
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 57
    new-instance p0, Ldev/duo/hookprobe/C$a;

    const-string v0, "\u68c0\u67e5\u5df2\u53d6\u6d88"

    invoke-direct {p0, v2, v4, v0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 54
    :catch_3
    move-exception p0

    .line 58
    new-instance v0, Ldev/duo/hookprobe/C$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v4, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 54
    :catch_4
    move-exception p0

    .line 59
    new-instance v0, Ldev/duo/hookprobe/C$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v4, p0}, Ldev/duo/hookprobe/C$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "com.android.thememanager"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_2

    :sswitch_4
    const-string v0, "com.miui.miwallpaper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_5
    const-string v0, "com.xiaomi.market"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_6
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_7
    const-string v0, "com.miui.personalassistant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_8
    const-string v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_9
    const-string v0, "com.tencent.mm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_a
    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    return-object p0

    .line 4
    :pswitch_0
    const-string p0, "\u5c0f\u7c73\u684c\u9762"

    return-object p0

    .line 7
    :pswitch_1
    const-string p0, "\u4e3b\u9898\uff08\u56fe\u6807\uff09"

    return-object p0

    .line 8
    :pswitch_2
    const-string p0, "\u7cfb\u7edf\u754c\u9762"

    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "\u8bbe\u7f6e\uff08\u901a\u7528\u9002\u914d\uff09"

    return-object p0

    .line 17
    :pswitch_4
    const-string p0, "\u58c1\u7eb8\uff08\u4e2a\u522b App \u9002\u914d\uff09"

    return-object p0

    .line 18
    :pswitch_5
    const-string p0, "\u5e94\u7528\u5546\u5e97\uff08\u901a\u7528\u9002\u914d\uff09"

    return-object p0

    .line 19
    :pswitch_6
    const-string p0, "\u6296\u97f3\uff08\u9002\u914d\uff09"

    return-object p0

    .line 20
    :pswitch_7
    const-string p0, "\u667a\u80fd\u52a9\u7406"

    return-object p0

    .line 21
    :pswitch_8
    const-string p0, "\u7cfb\u7edf\u6846\u67b6"

    return-object p0

    .line 27
    :pswitch_9
    const-string p0, "\u5fae\u4fe1\uff08\u9002\u914d\uff09"

    return-object p0

    .line 28
    :pswitch_a
    const-string p0, "\u7cfb\u7edf\u641c\u7d22"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x59d937be -> :sswitch_a
        -0x3a01688a -> :sswitch_9
        -0x34e38dd1 -> :sswitch_8
        -0xf7ce993 -> :sswitch_7
        0x12aad22a -> :sswitch_6
        0x21681322 -> :sswitch_5
        0x369f98f5 -> :sswitch_4
        0x44f4b98f -> :sswitch_3
        0x653aae6f -> :sswitch_2
        0x6b419d30 -> :sswitch_1
        0x7ce26eb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
