.class final Ldev/duo/icons/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/icons/a$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Landroid/content/ServiceConnection;

.field private d:Landroid/net/Uri;

.field private e:Z

.field private f:Z

.field private g:Z

.field private volatile h:Z


# direct methods
.method public static synthetic $r8$lambda$Hh2ghzajrJ3shqQvRcBn-YnP2zQ(Ldev/duo/icons/a;Ldev/duo/icons/a$c;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/icons/a;->a(Ldev/duo/icons/a$c;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NSlsogO1CQxCmr4vm2RJG6GAO3I(Ldev/duo/icons/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/icons/a;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uJfy77SJnMd65U50Ouh_wbf2ze0(Ldev/duo/icons/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/duo/icons/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/icons/a;->b:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.thememanager"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    const-string p0, "\u672a\u5b89\u88c5"

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/icons/a;->f:Z

    iget-boolean v1, p0, Ldev/duo/icons/a;->g:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    iget-object v2, p0, Ldev/duo/icons/a;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    iget-object v1, p0, Ldev/duo/icons/a;->d:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method

.method private synthetic a(Ldev/duo/icons/a$c;)V
    .locals 3

    .line 53
    iget-boolean v0, p0, Ldev/duo/icons/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Ldev/duo/icons/a;->a()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u672a\u6536\u5230\u56fe\u6807\u6865\u7ed3\u679c\uff08\u4e3b\u9898\u58c1\u7eb8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-static {v2}, Ldev/duo/icons/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    iget-boolean v2, p0, Ldev/duo/icons/a;->h:Z

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "\u4e3b\u9898\u58c1\u7eb8\u672a\u5728\u8fd0\u884c\u4e14\u65e0\u6cd5\u81ea\u52a8\u5524\u9192\uff0c\u8bf7\u5148\u6253\u5f00\u4e00\u6b21\u4e3b\u9898\u58c1\u7eb8\u518d\u56de\u6765\u68c0\u67e5\u3002"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u8bf7\u786e\u8ba4 LSPosed \u7684 MiDuo \u4f5c\u7528\u57df\u5df2\u52fe\u9009\u300c\u4e3b\u9898\u58c1\u7eb8\u300d\uff08\u4fdd\u7559\u539f\u6709\u52fe\u9009\uff09\uff1b\u521a\u52fe\u9009\u7684\u9700\u5728\u7cfb\u7edf\u8bbe\u7f6e\u91cc\u5f3a\u884c\u505c\u6b62\u4e00\u6b21\u300c\u4e3b\u9898\u58c1\u7eb8\u300d\u8ba9\u5b83\u52a0\u8f7d\u6a21\u5757\u3002\u4e4b\u540e\u70b9\u300c\u68c0\u67e5\u6a21\u5757\u72b6\u6001\u300d\uff0c\u4e0d\u8981\u91cd\u590d\u5e94\u7528\u3002\u7535\u8111\u548c Root \u4e0d\u53c2\u4e0e\u6b64\u6d41\u7a0b\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ldev/duo/icons/a$c;->a(ZLandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 48
    :try_start_0
    iget-object v0, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iput-boolean v1, p0, Ldev/duo/icons/a;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 49
    :try_start_3
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e3b\u9898\u8fdb\u7a0b\u5524\u9192\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DuoIcons"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :cond_2
    :goto_2
    iget-object p1, p0, Ldev/duo/icons/a;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V
    .locals 4

    .line 39
    iget-boolean v0, p0, Ldev/duo/icons/a;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/icons/a;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/icons/a;->e:Z

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "dev.duo.hookprobe.icons.COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.thememanager"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "op"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "nonce"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "reply"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    .line 41
    const-string v1, "APPLY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dev.duo.hookprobe.icons.files/stage/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/icons/a;->d:Landroid/net/Uri;

    .line 43
    iget-object p2, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-virtual {p2, v2, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 44
    iget-object p1, p0, Ldev/duo/icons/a;->d:Landroid/net/Uri;

    const-string p2, "uri"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "hash"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "title"

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    :cond_1
    :try_start_0
    iget-object p1, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 47
    invoke-direct {p0}, Ldev/duo/icons/a;->a()V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u65e0\u6cd5\u8fde\u63a5\u56fe\u6807\u6865\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "message"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {p6, p1, p2}, Ldev/duo/icons/a$c;->a(ZLandroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Ldev/duo/icons/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/icons/a;->f:Z

    return p0
.end method

.method private b()Ljava/lang/String;
    .locals 7

    const-string v0, "com.android.thememanager"

    .line 2
    :try_start_0
    iget-object v1, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 4
    iget-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    if-nez v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "DuoIcons"

    const-string v2, "\u672a\u5b89\u88c5\u4e3b\u9898\u58c1\u7eb8"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Ldev/duo/icons/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/icons/a;->a()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V
    .locals 11

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 3
    iget-object v0, p0, Ldev/duo/icons/a;->a:Landroid/content/Context;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nonce"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "nonceAt"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4
    new-instance v7, Ldev/duo/icons/a$a;

    iget-object v0, p0, Ldev/duo/icons/a;->b:Landroid/os/Handler;

    invoke-direct {v7, p0, v0, p4}, Ldev/duo/icons/a$a;-><init>(Ldev/duo/icons/a;Landroid/os/Handler;Ldev/duo/icons/a$c;)V

    .line 8
    new-instance v3, Ldev/duo/icons/a$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    move-object v8, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Ldev/duo/icons/a$$ExternalSyntheticLambda0;-><init>(Ldev/duo/icons/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;Ljava/lang/String;Ljava/lang/String;Ldev/duo/icons/a$c;)V

    .line 19
    new-instance p1, Ldev/duo/icons/a$b;

    invoke-direct {p1, p0, v3}, Ldev/duo/icons/a$b;-><init>(Ldev/duo/icons/a;Ljava/lang/Runnable;)V

    iput-object p1, v4, Ldev/duo/icons/a;->c:Landroid/content/ServiceConnection;

    .line 24
    :try_start_0
    iget-object p1, v4, Ldev/duo/icons/a;->a:Landroid/content/Context;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    const-string p4, "com.android.thememanager"

    const-string v0, "com.android.thememanager.service.ThemePCService"

    invoke-direct {p3, p4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, v4, Ldev/duo/icons/a;->c:Landroid/content/ServiceConnection;

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, v4, Ldev/duo/icons/a;->g:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 25
    const-string p2, "DuoIcons"

    const-string p3, "\u4e3b\u9898\u670d\u52a1\u4e0d\u53ef\u7ed1\u5b9a\uff0c\u6539\u7528\u516c\u5f00 Provider \u5524\u9192"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :goto_0
    iget-boolean p1, v4, Ldev/duo/icons/a;->g:Z

    iput-boolean p1, v4, Ldev/duo/icons/a;->h:Z

    .line 28
    iget-boolean p1, v4, Ldev/duo/icons/a;->g:Z

    if-nez p1, :cond_1

    .line 29
    invoke-direct {p0}, Ldev/duo/icons/a;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 30
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 31
    :cond_0
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Ldev/duo/icons/a$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, v3}, Ldev/duo/icons/a$$ExternalSyntheticLambda1;-><init>(Ldev/duo/icons/a;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 38
    :cond_1
    :goto_1
    iget-object p1, v4, Ldev/duo/icons/a;->b:Landroid/os/Handler;

    new-instance p2, Ldev/duo/icons/a$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v10}, Ldev/duo/icons/a$$ExternalSyntheticLambda2;-><init>(Ldev/duo/icons/a;Ldev/duo/icons/a$c;)V

    const-wide/16 p3, 0x7530

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
