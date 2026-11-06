.class final Ldev/duo/workspaceprobe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "dev.duo.hookprobe.INFO_WIDGET_REQUEST"

.field private static final b:Ljava/lang/String; = "dev.duo.hookprobe.INFO_WIDGET_CHANGED"

.field private static final c:Ljava/lang/String; = "dev.duo.hookprobe"

.field private static final d:Landroid/os/Handler;

.field private static final e:Ljava/util/concurrent/ExecutorService;

.field private static f:Landroid/content/Context;

.field private static g:Z

.field private static h:Z

.field private static i:J

.field private static j:Ljava/lang/String;

.field private static final k:Landroid/database/ContentObserver;

.field private static final l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldev/duo/workspaceprobe/d;->d:Landroid/os/Handler;

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Ldev/duo/workspaceprobe/d;->e:Ljava/util/concurrent/ExecutorService;

    .line 5
    const-wide v1, 0x7fffffffffffffffL

    sput-wide v1, Ldev/duo/workspaceprobe/d;->i:J

    .line 7
    new-instance v1, Ldev/duo/workspaceprobe/d$a;

    invoke-direct {v1, v0}, Ldev/duo/workspaceprobe/d$a;-><init>(Landroid/os/Handler;)V

    sput-object v1, Ldev/duo/workspaceprobe/d;->k:Landroid/database/ContentObserver;

    .line 10
    new-instance v0, Ldev/duo/workspaceprobe/d$b;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/d$b;-><init>()V

    sput-object v0, Ldev/duo/workspaceprobe/d;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/d;->b(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 7

    .line 4
    sget-object v0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    sput-object p0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    .line 6
    new-instance v2, Ldev/duo/workspaceprobe/d$c;

    invoke-direct {v2}, Ldev/duo/workspaceprobe/d$c;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "dev.duo.hookprobe.INFO_WIDGET_REQUEST"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v5, Ldev/duo/workspaceprobe/d;->d:Landroid/os/Handler;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 38
    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()V

    .line 39
    const-string p0, "MiDuoWidgets"

    const-string v0, "SystemUI widget data bridge ready"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-static {p0}, Ldev/duo/workspaceprobe/d;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 10

    .line 2
    const-string v1, "error"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    :try_start_0
    sget-object v0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 4
    :try_start_1
    const-string v0, "\u539f\u751f\u63a5\u53e3\u8fd4\u56de\u7a7a\u6e38\u6807"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_d

    .line 29
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 30
    :cond_0
    :try_start_3
    const-string v0, "columns"

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    const-string v0, "count"

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x30

    if-ge v4, v5, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 34
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    .line 35
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 36
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 37
    :cond_1
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    .line 38
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(city_?id|city_?name|local_?id|posid|_?id|name|position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".*(latitude|longitude|address|mac|device_name|icon).*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz p1, :cond_5

    .line 44
    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "(position|sort(_order)?|order(_index)?|city_?index|index|selected(_index)?|is_selected|current(_index)?|is_current|flag)"

    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "-?[0-9]+|true|false"

    .line 47
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    .line 48
    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v9, 0x3e80

    if-gt v7, v9, :cond_8

    .line 49
    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u751f\u5b57\u6bb5\u8fc7\u5927: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_a
    const-string v4, "rows"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    .line 29
    :catchall_0
    move-exception v0

    move-object v4, v0

    .line 56
    if-eqz v3, :cond_b

    .line 57
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    :cond_b
    :goto_3
    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 29
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_c

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 88
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget query failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiDuoWidgets"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_4
    return-object v2
.end method

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/workspaceprobe/d;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static b(Landroid/content/Intent;)V
    .locals 8

    .line 90
    const-string v0, "batteryActive"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 91
    const-string v2, "weatherActive"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 92
    const-string v2, "calendarNext"

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Ldev/duo/workspaceprobe/d;->i:J

    .line 94
    :try_start_0
    sget-boolean p0, Ldev/duo/workspaceprobe/d;->g:Z

    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_0

    .line 96
    new-instance v4, Landroid/content/IntentFilter;

    const-string p0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    const-string p0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string p0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-object v2, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    sget-object v3, Ldev/duo/workspaceprobe/d;->l:Landroid/content/BroadcastReceiver;

    sget-object v6, Ldev/duo/workspaceprobe/d;->d:Landroid/os/Handler;

    const/4 v7, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    goto :goto_0

    .line 100
    :cond_0
    sget-object p0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    sget-object v2, Ldev/duo/workspaceprobe/d;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :goto_0
    sput-boolean v0, Ldev/duo/workspaceprobe/d;->g:Z

    .line 103
    :cond_1
    sget-boolean p0, Ldev/duo/workspaceprobe/d;->h:Z

    if-eq v1, p0, :cond_3

    if-eqz v1, :cond_2

    .line 104
    sget-object p0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://weather"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Ldev/duo/workspaceprobe/d;->k:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1

    .line 105
    :cond_2
    sget-object p0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Ldev/duo/workspaceprobe/d;->k:Landroid/database/ContentObserver;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    :goto_1
    sput-boolean v1, Ldev/duo/workspaceprobe/d;->h:Z

    :cond_3
    nop

    .line 108
    const/4 p0, 0x0

    sput-object p0, Ldev/duo/workspaceprobe/d;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 99
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/workspaceprobe/d;->j:Ljava/lang/String;

    .line 111
    const-string v0, "MiDuoWidgets"

    const-string v1, "widget change subscription failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/workspaceprobe/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static d()V
    .locals 1

    .line 1
    sget-boolean v0, Ldev/duo/workspaceprobe/d;->g:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()V

    :cond_0
    return-void
.end method

.method static e()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ldev/duo/workspaceprobe/d;->i:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Ldev/duo/workspaceprobe/d;->i:J

    .line 3
    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()V

    :cond_0
    return-void
.end method

.method private static f()V
    .locals 4

    .line 1
    sget-object v0, Ldev/duo/workspaceprobe/d;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "dev.duo.hookprobe.INFO_WIDGET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "dev.duo.hookprobe"

    const-string v3, "dev.duo.hookprobe.InfoWidgetProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 4
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
