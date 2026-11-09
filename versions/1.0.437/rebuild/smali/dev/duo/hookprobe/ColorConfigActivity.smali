.class public final Ldev/duo/hookprobe/ColorConfigActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/ColorConfigActivity$b;
    }
.end annotation


# instance fields
.field private a:Ldev/duo/hookprobe/ColorConfigActivity$b;

.field private b:Landroid/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$7axJ-lRQ4psh-3QvvOO4WAYIuvo(Ldev/duo/hookprobe/ColorConfigActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$JmXoSKeEnp6YE63qqz_J2kKKUoM(Ldev/duo/hookprobe/ColorConfigActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8-dtWvAHwDS6emAlz430s1FVIU(Ldev/duo/hookprobe/ColorConfigActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$dGdyR9f_riqLrLA-ryswHvfHguM(Ldev/duo/hookprobe/ColorConfigActivity;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIdb59i2b9--W1r6aRty7CGYfwA(Ldev/duo/hookprobe/ColorConfigActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vgP3cAFmIHIXzWb9Que-0tdQUBI(Ldev/duo/hookprobe/ColorConfigActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$wRM9DjgkFShxTlmeoOJ9zBBlBwE(Ldev/duo/hookprobe/ColorConfigActivity;Landroid/app/AlertDialog;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Landroid/app/AlertDialog;Ljava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    return-object p1
.end method

.method private synthetic a()V
    .locals 3

    .line 20
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-object v0, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->f:Ldev/duo/hookprobe/ColorConfigActivity;

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-object v2, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 23
    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    .line 25
    :cond_1
    iget-boolean v2, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->c:Z

    if-nez v2, :cond_2

    iget-object v1, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->b:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/duo/hookprobe/ColorConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "export"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic a(Landroid/app/AlertDialog;Ljava/util/Map;Landroid/view/View;)V
    .locals 1

    .line 17
    iget-object p3, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    const/4 v0, 0x1

    iput-boolean v0, p3, Ldev/duo/hookprobe/ColorConfigActivity$b;->c:Z

    iput-boolean v0, p3, Ldev/duo/hookprobe/ColorConfigActivity$b;->d:Z

    .line 18
    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    sget-object p1, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p2}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda6;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;Ljava/util/Map;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p1}, Ldev/duo/hookprobe/m;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "\n\u2022 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_2
    const-string v1, "\u66ff\u6362\u989c\u8272\u914d\u7f6e\uff1f"

    invoke-static {p0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5c06\u66ff\u6362\u4ee5\u4e0b App \u7684\u5168\u90e8\u914d\u8272\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n\u5176\u4ed6 App \u548c\u5176\u4ed6\u8bbe\u7f6e\u4fdd\u6301\u4e0d\u53d8\u3002\u672a\u5b89\u88c5 App \u7684\u914d\u8272\u4e5f\u4f1a\u4fdd\u5b58\u3002"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;)V

    .line 9
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    const-string v1, "\u786e\u8ba4\u66ff\u6362"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 11
    iput-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->b:Landroid/app/AlertDialog;

    .line 12
    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 13
    invoke-static {v0}, Ldev/duo/hookprobe/U;->a(Landroid/app/AlertDialog;)V

    .line 14
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;Landroid/app/AlertDialog;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic b()V
    .locals 4

    .line 1
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Ldev/duo/hookprobe/o;

    invoke-direct {v1, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    iget-object v0, v1, Ldev/duo/hookprobe/o;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/duo/hookprobe/m;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-object v2, v2, Ldev/duo/hookprobe/ColorConfigActivity$b;->a:Landroid/net/Uri;

    const-string v3, "wt"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 6
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 9
    const-string v0, "\u989c\u8272\u914d\u7f6e\u5df2\u5bfc\u51fa"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 10
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u65e0\u6cd5\u5199\u5165\u6240\u9009\u6587\u4ef6"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 12
    :cond_1
    :goto_0
    throw v0

    .line 13
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u8bf7\u5148\u8fde\u63a5 LSPosed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 9
    :catch_0
    move-exception v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iput-object p1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->c:Z

    .line 45
    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->d()V

    return-void
.end method

.method private synthetic b(Ljava/util/Map;)V
    .locals 4

    .line 22
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ldev/duo/hookprobe/L;->a(J)Lio/github/libxposed/service/XposedService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    const-class v1, Ldev/duo/hookprobe/F;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance v2, Ldev/duo/hookprobe/o;

    invoke-direct {v2, v0}, Ldev/duo/hookprobe/o;-><init>(Lio/github/libxposed/service/XposedService;)V

    invoke-virtual {v2, p1}, Ldev/duo/hookprobe/o;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    const-string v0, ""

    invoke-static {v0}, Ldev/duo/hookprobe/F;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 27
    invoke-static {p1}, Ldev/duo/hookprobe/m;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "token"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Ldev/duo/hookprobe/F;->a(Landroid/content/Context;J)V

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    const-string p1, "\u989c\u8272\u914d\u7f6e\u5df2\u5bfc\u5165"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 31
    :cond_1
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "\u989c\u8272\u914d\u7f6e\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "LSPosed \u914d\u7f6e\u670d\u52a1\u672a\u8fde\u63a5"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 30
    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5bfc\u5165\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-object v1, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-static {v0}, Ldev/duo/hookprobe/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 5
    invoke-static {v1}, Ldev/duo/hookprobe/m;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iput-object v0, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->c:Z

    .line 7
    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->d()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 8
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\u65e0\u6cd5\u8bfb\u53d6\u6240\u9009\u6587\u4ef6"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :catchall_0
    move-exception v1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 10
    :cond_1
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 7
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5bfc\u5165\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->c:Z

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "export"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iput-boolean v1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->d:Z

    .line 4
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda4;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_0
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/ColorConfigActivity$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/ColorConfigActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

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
    iget-object p1, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p1, Ldev/duo/hookprobe/ColorConfigActivity$b;->a:Landroid/net/Uri;

    .line 4
    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->e()V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {p0}, Ldev/duo/hookprobe/U;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    sget v1, Ldev/duo/hookprobe/U;->c:I

    const/high16 v2, 0x41700000    # 15.0f

    const/16 v3, 0x1f4

    invoke-static {p0, v2, v1, v3}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;FII)Landroid/widget/TextView;

    move-result-object v1

    .line 6
    const-string v2, "\u6b63\u5728\u5904\u7406\u989c\u8272\u914d\u7f6e\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x11

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/duo/hookprobe/ColorConfigActivity$b;

    if-nez v0, :cond_0

    .line 10
    new-instance v1, Ldev/duo/hookprobe/ColorConfigActivity$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ldev/duo/hookprobe/ColorConfigActivity$b;-><init>(Ldev/duo/hookprobe/ColorConfigActivity$a;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    .line 11
    iput-object p0, v1, Ldev/duo/hookprobe/ColorConfigActivity$b;->f:Ldev/duo/hookprobe/ColorConfigActivity;

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->d()V

    return-void

    :cond_1
    if-eqz p1, :cond_4

    .line 14
    const-string v0, "writing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "\u64cd\u4f5c\u88ab\u4e2d\u65ad\uff0c\u8bf7\u68c0\u67e5\u5f53\u524d\u914d\u7f6e\u540e\u518d\u64cd\u4f5c"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->b(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    const-string v0, "selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ldev/duo/hookprobe/ColorConfigActivity;->e()V

    :cond_3
    return-void

    .line 19
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "export"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 20
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_5

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    goto :goto_1

    :cond_5
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    :goto_1
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_6

    const-string v1, "application/octet-stream"

    goto :goto_2

    :cond_6
    const-string v1, "*/*"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_8

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, "MiDuo-\u5168\u90e8\u989c\u8272\u914d\u7f6e"

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/ColorConfigActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-\u989c\u8272\u914d\u7f6e"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    :goto_3
    const-string v1, "[\\\\/:*?\"<>|\\p{Cntrl}]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "yyyyMMdd-HHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 26
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".miduocolors"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    nop

    .line 30
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->f:Ldev/duo/hookprobe/ColorConfigActivity;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->f:Ldev/duo/hookprobe/ColorConfigActivity;

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-object v0, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selected"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/ColorConfigActivity;->a:Ldev/duo/hookprobe/ColorConfigActivity$b;

    iget-boolean v0, v0, Ldev/duo/hookprobe/ColorConfigActivity$b;->d:Z

    const-string v1, "writing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
