.class public final Ldev/duo/hookprobe/BugCaptureActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private final g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$5i0QqFmDMnMWbN9qMO6efPP3gXw(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G0xkumtuNv-2zKKnqaLyiDxxTeY(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBEtbJ5goyB0_aJzvSr7D7N8h9U(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MnfprnEbw4ZteiIvOTr68P6U7SY(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVmS_EvOUG6KXJbmsSJkFZELDvM(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fjZ53-s3Gx1GEK8WgCjkfNVyhLQ(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lvF8_Faip7zQpxuBck4X0rhZJ8M(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oYQkPE_4U7JhDJm2dqy3-ep8zqI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pWeCJ29Lt-gDQM0qRYRH7kfzxlY(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ys3aOFU_Vp91Ojnj30eEZzLt8dY(Ldev/duo/hookprobe/BugCaptureActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 4
    new-instance v0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private a()V
    .locals 3

    .line 3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/duo/hookprobe/BugCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e0\u6cd5\u5f00\u59cb\u6293\u53d6\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 48
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->d()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 33
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "wt"

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_0

    .line 36
    const-wide/32 v1, 0x1000000

    :try_start_2
    invoke-static {v0, p1, v1, v2}, Ldev/duo/hookprobe/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z

    .line 37
    const-string p3, "\u62a5\u544a\u5df2\u5bfc\u51fa"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 39
    :cond_0
    :try_start_5
    new-instance p3, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u6253\u5f00\u6240\u9009\u4f4d\u7f6e"

    invoke-direct {p3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    :catchall_0
    move-exception p3

    .line 39
    if-eqz p1, :cond_1

    .line 40
    :try_start_6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 38
    :catchall_2
    move-exception p1

    .line 40
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p3

    :try_start_9
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 38
    :catch_0
    move-exception p1

    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 47
    :goto_2
    new-instance p1, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p3}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 7
    sget-object v6, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    .line 8
    const-string v0, "\u5e38\u9a7b\u8bb0\u5f55\u64cd\u4f5c\u5931\u8d25\uff1a"

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const-string v2, "su"

    const-string v3, "-c"

    filled-new-array {v2, v3, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p2

    .line 9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    invoke-virtual {p2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x2000

    :try_start_1
    invoke-static {v2, v1, v3, v4}, Ldev/duo/hookprobe/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 11
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {p2, v3, v4, v2}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    const-string p1, "\u64cd\u4f5c\u8d85\u65f6"

    goto :goto_2

    .line 13
    :cond_1
    const-string p2, "UTF-8"

    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 15
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p3, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_6

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, "\u6ca1\u6709\u7ed3\u679c"

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 16
    :goto_1
    nop

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 11
    :goto_2
    goto :goto_4

    .line 17
    :catchall_0
    move-exception p1

    if-eqz v2, :cond_4

    .line 18
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 19
    :cond_4
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 10
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    move-object p1, p2

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    .line 32
    new-instance p2, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4, p1}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method private static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->e()V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ring"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u5e38\u9a7b\u8f7b\u91cf\u8bb0\u5f55\uff1a\u5df2\u5f00\u542f\uff08\u70b9\u6b64\u5173\u95ed\u5e76\u5220\u9664\u8bb0\u5f55\uff09"

    goto :goto_0

    :cond_0
    const-string v1, "\u5e38\u9a7b\u8f7b\u91cf\u8bb0\u5f55\uff1a\u5df2\u5173\u95ed\uff08\u70b9\u6b64\u5f00\u542f\uff09"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->a()V

    return-void
.end method

.method private d()V
    .locals 7

    .line 3
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4
    const-string v1, "file"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-boolean v2, Ldev/duo/hookprobe/BugCaptureService;->f:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 6
    const-string v4, "capturing"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    const-string v0, "\u4e0a\u6b21\u6293\u53d6\u88ab\u4e2d\u65ad\uff0c\u53ef\u5bfc\u51fa\u5df2\u4fdd\u5b58\u7684\u90e8\u5206"

    goto :goto_0

    .line 8
    :cond_0
    const-string v4, "status"

    const-string v5, "\u5c1a\u672a\u6293\u53d6"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v4, p0, Ldev/duo/hookprobe/BugCaptureActivity;->a:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_1

    const-string v6, "\u8fdb\u884c\u4e2d\n"

    goto :goto_1

    :cond_1
    const-string v6, "\u5df2\u505c\u6b62\n"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n\u62a5\u544a\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->b:Landroid/widget/TextView;

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 15
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->d:Landroid/widget/TextView;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/duo/hookprobe/BugCaptureService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.lsposed.miduo.STOP_BUG_CAPTURE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 5
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->b()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 6
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ring"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->c()V

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ldev/duo/hookprobe/j;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ldev/duo/hookprobe/j;->c()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "\u5e38\u9a7b\u8bb0\u5f55\u5df2\u5f00\u542f"

    goto :goto_1

    :cond_1
    const-string v2, "\u5e38\u9a7b\u8bb0\u5f55\u5df2\u5173\u95ed\u5e76\u5220\u9664"

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "RING_STARTED"

    aput-object v5, v0, v3

    const-string v3, "RING_ALREADY"

    aput-object v3, v0, v4

    goto :goto_2

    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "RING_STOPPED"

    aput-object v4, v0, v3

    .line 10
    :goto_2
    invoke-direct {p0, v1, v2, v0}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "file"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->f:Ljava/lang/String;

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiDuo-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->f:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 6
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2, p3, p1}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda8;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;Ljava/io/File;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/L;->a(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ldev/duo/hookprobe/T$d;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/T$d;-><init>(Landroid/app/Activity;)V

    .line 4
    invoke-static {p0}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 5
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {p0, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    const/high16 v3, 0x42300000    # 44.0f

    const-string v4, "\u8fd4\u56de"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, v3}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v3

    .line 7
    new-instance v4, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    sget v3, Ldev/duo/hookprobe/T;->b:I

    const/high16 v4, 0x41c00000    # 24.0f

    const/16 v6, 0x258

    invoke-static {p0, v4, v3, v6}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 10
    const-string v4, "Bug \u6293\u53d6\u6a21\u5f0f"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-static {v4, p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    sget v3, Ldev/duo/hookprobe/T;->c:I

    const/16 v4, 0x190

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    .line 13
    const-string v4, "1. \u70b9\u5f00\u59cb\u5e76\u5141\u8bb8 Root \u8bfb\u53d6\u65e5\u5fd7\u3002\n2. \u53bb\u51fa\u95ee\u9898\u7684 App \u590d\u73b0\u3002\u51b7\u542f\u52a8\u95ee\u9898\u8bf7\u5728\u6253\u5f00 App \u524d\u5f00\u59cb\u6293\u53d6\u3002\n3. \u51fa\u95ee\u9898\u540e\u7acb\u5373\u70b9\u901a\u77e5\u91cc\u7684\u7ed3\u675f\uff0c\u518d\u56de\u6765\u5bfc\u51fa\u3002\n\n\u6700\u591a\u6293\u53d6 2 \u5206\u949f\u300116 MiB\uff0c\u81ea\u52a8\u505c\u6b62\uff1b\u9ed8\u8ba4\u5173\u95ed\uff0c\u4e0d\u81ea\u52a8\u4e0a\u4f20\u3002\n\n\u62a5\u544a\u5305\u542b\uff1a\u5f00\u5934\u548c\u7ed3\u5c3e\u5404\u4e00\u4efd\u72b6\u6001\u5feb\u7167\uff08\u5404\u8fdb\u7a0b\u8f7d\u5165\u7684 MiDuo \u7248\u672c\u3001\u7a97\u53e3\u4e0e\u4efb\u52a1\u3001\u56fe\u5c42\u3001\u5c0f\u7ec4\u4ef6\u3001\u6743\u9650\u3001\u5185\u5b58\u3001\u5d29\u6e83\u8bb0\u5f55\uff09\u3001MiDuo \u5168\u90e8\u6a21\u5757\u65e5\u5fd7\u3001\u6240\u6709\u8b66\u544a\u4e0e\u9519\u8bef\u65e5\u5fd7\u3001\u8bbe\u5907\u4e0e\u5e94\u7528\u7248\u672c\u3002\u4e0d\u622a\u5c4f\uff0c\u4e0d\u8bfb\u804a\u5929\u548c\u7167\u7247\u5185\u5bb9\u3002\u53ef\u80fd\u542b\u6b63\u5728\u4f7f\u7528\u7684 App \u540d\u79f0\uff0c\u5206\u4eab\u524d\u8bf7\u68c0\u67e5\u3002\u5e94\u7528\u79c1\u6709\u76ee\u5f55\u6700\u591a\u4fdd\u7559\u6700\u8fd1 3 \u4efd\u62a5\u544a\u3002\n\n\u201c\u5e38\u9a7b\u8f7b\u91cf\u8bb0\u5f55\u201d\u9ed8\u8ba4\u5173\u95ed\uff1a\u6253\u5f00\u540e\u540e\u53f0\u53ea\u7559 MiDuo \u76f8\u5173\u65e5\u5fd7\u7684\u6700\u8fd1\u7ea6 8 MiB\uff0c\u6293\u53d6\u62a5\u544a\u4f1a\u4e00\u5e76\u9644\u4e0a\uff0c\u7528\u6765\u6293\u4e24\u5206\u949f\u590d\u73b0\u4e0d\u51fa\u6765\u7684\u5076\u53d1\u95ee\u9898\uff1b\u5173\u95ed\u5373\u5220\u9664\u3002\u91cd\u542f\u624b\u673a\u540e\u9700\u6253\u5f00\u4e00\u6b21 MiDuo \u624d\u4f1a\u6062\u590d\u3002"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    const/4 v4, 0x0

    const v7, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 15
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v4, p0, v7}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    sget v3, Ldev/duo/hookprobe/T;->b:I

    const/16 v4, 0x1f4

    invoke-static {p0, v6, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Ldev/duo/hookprobe/BugCaptureActivity;->a:Landroid/widget/TextView;

    .line 17
    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-static {v4, p0, v2}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    const-string v2, "\u5f00\u59cb\u6293\u53d6"

    const/4 v3, 0x1

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v2, v3, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->b:Landroid/widget/TextView;

    .line 19
    const-string v2, "\u7ed3\u675f\u6293\u53d6"

    invoke-static {p0, v2, v5, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->c:Landroid/widget/TextView;

    .line 20
    const-string v2, "\u5bfc\u51fa\u6700\u8fd1\u4e00\u6b21\u62a5\u544a"

    invoke-static {p0, v2, v5, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->d:Landroid/widget/TextView;

    .line 21
    const-string v2, ""

    invoke-static {p0, v2, v5, v4}, Ldev/duo/hookprobe/T;->a(Landroid/content/Context;Ljava/lang/String;ZF)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->e:Landroid/widget/TextView;

    .line 22
    iget-object v4, p0, Ldev/duo/hookprobe/BugCaptureActivity;->b:Landroid/widget/TextView;

    iget-object v6, p0, Ldev/duo/hookprobe/BugCaptureActivity;->c:Landroid/widget/TextView;

    iget-object v7, p0, Ldev/duo/hookprobe/BugCaptureActivity;->d:Landroid/widget/TextView;

    filled-new-array {v4, v6, v7, v2}, [Landroid/widget/TextView;

    move-result-object v2

    :goto_0
    const/4 v4, 0x4

    if-ge v5, v4, :cond_0

    aget-object v4, v2, v5

    invoke-static {}, Ldev/duo/hookprobe/T;->a()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v6, p0, v7}, Ldev/duo/hookprobe/T;->a(Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;F)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iget-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->e:Landroid/widget/TextView;

    new-instance v4, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->b:Landroid/widget/TextView;

    new-instance v4, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->c:Landroid/widget/TextView;

    new-instance v4, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v2, p0, Ldev/duo/hookprobe/BugCaptureActivity;->d:Landroid/widget/TextView;

    new-instance v4, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/BugCaptureActivity$$ExternalSyntheticLambda7;-><init>(Ldev/duo/hookprobe/BugCaptureActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 40
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 41
    iget-object v1, v0, Ldev/duo/hookprobe/T$d;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, v0, Ldev/duo/hookprobe/T$d;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 43
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget p3, p3, v0

    if-nez p3, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->a()V

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    .line 3
    const-string p1, "\u672a\u5f00\u59cb\u6293\u53d6\uff1a\u9700\u8981\u901a\u77e5\u6743\u9650\u663e\u793a\u7ed3\u675f\u6309\u94ae"

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/BugCaptureActivity;->f:Ljava/lang/String;

    const-string v1, "selected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->c()V

    .line 4
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/duo/hookprobe/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RING_STARTED"

    const-string v2, "RING_ALREADY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ldev/duo/hookprobe/BugCaptureActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 6
    invoke-direct {p0}, Ldev/duo/hookprobe/BugCaptureActivity;->d()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/BugCaptureService;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/BugCaptureActivity;->g:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
