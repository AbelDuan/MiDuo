.class final Ldev/duo/icons/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static d:Ldev/duo/icons/b;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$FaHT5m0EMCTyv8bcnzPoghxtEhU(Ldev/duo/icons/b;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/duo/icons/b;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/icons/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p1, p0, Ldev/duo/icons/b;->a:Landroid/app/Application;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "duo-icons-v1"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ldev/duo/icons/b;->c:Ljava/io/File;

    return-void
.end method

.method static declared-synchronized a(Landroid/app/Application;)V
    .locals 8

    const-class v1, Ldev/duo/icons/b;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v0, Ldev/duo/icons/b;->d:Ldev/duo/icons/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 2
    :cond_0
    :try_start_1
    new-instance v3, Ldev/duo/icons/b;

    invoke-direct {v3, p0}, Ldev/duo/icons/b;-><init>(Landroid/app/Application;)V

    sput-object v3, Ldev/duo/icons/b;->d:Ldev/duo/icons/b;

    .line 3
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "com.lsposed.miduo.icons.COMMAND"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "com.lsposed.miduo.permission.ICONS"

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 4
    const-string p0, "DuoIcons"

    const-string v0, "\u56fe\u6807\u6865\u5df2\u6ce8\u518c\uff0c\u4ec5\u4e3b\u9898\u58c1\u7eb8\u4f5c\u7528\u57df"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    .line 0
    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private synthetic a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v4, "backup"

    const-string v5, "\u5173\u95ed\u5907\u4efd\u63cf\u8ff0\u7b26"

    const-string v6, "message"

    const-string v7, "APPLY"

    const-string v8, "DuoIcons"

    .line 5
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 7
    :try_start_0
    new-instance v11, Ldev/duo/icons/f;

    iget-object v12, v0, Ldev/duo/icons/b;->a:Landroid/app/Application;

    invoke-direct {v11, v12}, Ldev/duo/icons/f;-><init>(Landroid/content/Context;)V

    iget-object v12, v0, Ldev/duo/icons/b;->c:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 8
    new-instance v12, Ljava/io/File;

    iget-object v13, v0, Ldev/duo/icons/b;->c:Ljava/io/File;

    const-string v14, "incoming.zip"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v13, ""

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v14, :cond_4

    .line 10
    :try_start_1
    const-string v13, "uri"

    const-class v14, Landroid/net/Uri;

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;

    const-string v14, "hash"

    invoke-virtual {v2, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "title"

    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v13, :cond_3

    .line 11
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v2

    const-string v2, "content://com.lsposed.miduo.icons.files/stage/"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v10, p3

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v14, :cond_3

    const-string v2, "[a-f0-9]{64}"

    invoke-virtual {v14, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x78

    if-gt v2, v10, :cond_3

    .line 12
    iget-object v2, v0, Ldev/duo/icons/b;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    move-object v10, v4

    const-wide/32 v3, 0x8000000

    :try_start_2
    invoke-static {v2, v12, v3, v4}, Ldev/duo/icons/e;->a(Ljava/io/InputStream;Ljava/io/File;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 13
    invoke-static {v12}, Ldev/duo/icons/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v2, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Ldev/duo/icons/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v12, v2}, Ldev/duo/icons/e;->a(Ljava/io/File;Ldev/duo/icons/e$c;)I

    move-object/from16 v13, p2

    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u5305\u4f20\u8f93\u6821\u9a8c\u5931\u8d25"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 16
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u65e0\u6cd5\u8bfb\u53d6\u5bfc\u5165\u56fe\u6807"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 16
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 17
    :cond_2
    :goto_0
    throw v1

    .line 18
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u56fe\u6807\u8bf7\u6c42\u683c\u5f0f\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 14
    :catchall_2
    move-exception v0

    move-object/from16 v3, p4

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 9
    :cond_4
    move-object v10, v4

    .line 23
    :goto_1
    :try_start_7
    new-instance v2, Ldev/duo/icons/d;

    const-string v3, "/data/system/theme/icons"

    const/4 v4, 0x0

    new-array v14, v4, [Ljava/lang/String;

    invoke-static {v3, v14}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iget-object v14, v0, Ldev/duo/icons/b;->c:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v14

    invoke-direct {v2, v3, v14, v11}, Ldev/duo/icons/d;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Ldev/duo/icons/d$a;)V

    .line 24
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 25
    :goto_2
    const/4 v11, 0x0

    :try_start_9
    invoke-virtual {v2, v1, v3, v13, v11}, Ldev/duo/icons/d;->a(Ljava/lang/String;Ljava/nio/file/Path;Ljava/lang/String;Ljava/nio/file/Path;)Ljava/util/Properties;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_6
    const-string v3, "STATUS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "\u56fe\u6807\u6865\u5df2\u8fde\u63a5\uff0c\u5e94\u7528\u517c\u5bb9\u6027\u4ee5\u64cd\u4f5c\u7ed3\u679c\u4e3a\u51c6"

    goto :goto_4

    .line 28
    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\u56fe\u6807\u5df2\u5e94\u7528\uff0c\u5176\u4ed6\u4e3b\u9898\u7ec4\u4ef6\u672a\u6539"

    goto :goto_4

    .line 29
    :cond_8
    const-string v1, "\u5df2\u6062\u590d\u9996\u6b21\u5e94\u7528\u524d\u7684\u56fe\u6807"

    .line 27
    :goto_4
    nop

    .line 29
    invoke-virtual {v9, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v10}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "ABSENT"

    invoke-virtual {v2, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Ldev/duo/icons/b;->c:Ljava/io/File;

    const-string v2, "baseline.icons"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    const-string v0, "backupFd"

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    .line 14
    :catchall_3
    move-exception v0

    move-object/from16 v3, p4

    goto :goto_7

    .line 30
    :cond_9
    move-object v10, v11

    .line 31
    :goto_5
    move-object/from16 v3, p4

    :try_start_b
    invoke-virtual {v3, v4, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v10, :cond_b

    .line 33
    :try_start_c
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    .line 14
    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v3, p4

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v3, p4

    const/4 v11, 0x0

    :goto_6
    move-object v10, v11

    .line 34
    :goto_7
    :try_start_d
    const-string v1, "\u9650\u5b9a\u56fe\u6807\u64cd\u4f5c\u5931\u8d25"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v0, "\u56fe\u6807\u64cd\u4f5c\u5931\u8d25\uff0c\u5907\u4efd\u4ecd\u4fdd\u7559"

    goto :goto_8

    .line 35
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_8
    nop

    .line 35
    invoke-virtual {v9, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-eqz v10, :cond_b

    .line 36
    :try_start_e
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    .line 33
    :goto_9
    invoke-static {v8, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_a
    invoke-virtual/range {p5 .. p5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 36
    return-void

    .line 34
    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 36
    if-eqz v10, :cond_c

    .line 37
    :try_start_f
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-static {v8, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_b
    invoke-virtual/range {p5 .. p5}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p1, "com.lsposed.miduo"

    .line 1
    :try_start_0
    iget-object v0, p0, Ldev/duo/icons/b;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSentFromUid()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSentFromPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "op"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "nonce"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    const-string p1, "STATUS"

    const-string v0, "APPLY"

    const-string v1, "RESTORE"

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v4, :cond_3

    const-string p1, "[a-f0-9]{32}"

    invoke-virtual {v4, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    const-string p1, "reply"

    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/os/ResultReceiver;

    if-nez v5, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v6

    iget-object p1, p0, Ldev/duo/icons/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldev/duo/icons/b$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Ldev/duo/icons/b$$ExternalSyntheticLambda0;-><init>(Ldev/duo/icons/b;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 27
    const-string p2, "DuoIcons"

    const-string v0, "\u62d2\u7edd\u4e0d\u5339\u914d\u8bf7\u6c42"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method
