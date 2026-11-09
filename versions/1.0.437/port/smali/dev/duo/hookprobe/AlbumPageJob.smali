.class public final Ldev/duo/hookprobe/AlbumPageJob;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "MiDuoAlbum"

.field private static final c:I = 0xa0f1

.field private static final d:Ljava/lang/String; = "ids"


# instance fields
.field private volatile a:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$yLEFu_sqBSk0-Sv42UVHt2TOTiE(Ldev/duo/hookprobe/AlbumPageJob;Landroid/content/Context;[ILandroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/duo/hookprobe/AlbumPageJob;->a(Landroid/content/Context;[ILandroid/app/job/JobParameters;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 2
    const-string v1, "ids"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Ldev/duo/hookprobe/AlbumPageJob;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0xa0f1

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 4
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 5
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const-string v0, "MiDuoAlbum"

    if-ne p0, v2, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget page job scheduled ids="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "widget page job not scheduled (result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "), left to the MiDuo page"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic a(Landroid/content/Context;[ILandroid/app/job/JobParameters;)V
    .locals 3

    .line 8
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;)Ldev/duo/hookprobe/b$d;

    move-result-object v1

    invoke-static {p1, p2, v1}, Ldev/duo/hookprobe/b;->a(Landroid/content/Context;[ILdev/duo/hookprobe/b$d;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, p3, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void

    :catchall_0
    move-exception p1

    move p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    const/4 p1, 0x1

    :try_start_1
    const-string p2, "MiDuoAlbum"

    const-string v1, "widget page job stopped by the system, left to the MiDuo page"

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 13
    :catchall_1
    move-exception p2

    move-object v2, p2

    move p2, p1

    move-object p1, v2

    .line 14
    :goto_0
    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p0, p3, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 17
    :cond_0
    throw p1
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0, p1}, Ldev/duo/hookprobe/AlbumPageJob$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/AlbumPageJob;Landroid/content/Context;[ILandroid/app/job/JobParameters;)V

    const-string p1, "MiDuoAlbumPage"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 15
    iput-object v2, p0, Ldev/duo/hookprobe/AlbumPageJob;->a:Ljava/lang/Thread;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/AlbumPageJob;->a:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
