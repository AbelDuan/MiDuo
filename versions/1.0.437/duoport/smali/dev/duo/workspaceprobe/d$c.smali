.class Ldev/duo/workspaceprobe/d$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/d;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$WjpUW4l7rIF10ObiIL_71-tCno0(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/d$c;->a(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "battery"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    const-string v1, "batteryDevices"

    const-string v3, "content://com.miui.securitycenter.widgetProvider/getWearableAndHeadSetData"

    invoke-static {v3, v2}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    :cond_0
    const-string v1, "weather"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "content://weather/weatherData/4/"

    const-string v4, "weatherCurrent"

    if-eqz v1, :cond_1

    .line 7
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ldev/duo/workspaceprobe/d;->a(J)J

    .line 8
    invoke-static {v3, v2}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    const-string v1, "weatherHourly"

    const-string v5, "content://weather/hourlyData/4/"

    invoke-static {v5, v2}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v7

    invoke-static {v1, v2}, Ldev/duo/workspaceprobe/d;->a(J)J

    .line 12
    :cond_1
    const-string v1, "probe"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 13
    const/4 p0, 0x1

    invoke-static {v3, p0}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    const-string v1, "weatherLegacy"

    const-string v2, "content://weather/actualWeatherData/1"

    invoke-static {v2, p0}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    const-string v1, "weatherSelectedCity"

    const-string v2, "content://weather/selected_city"

    invoke-static {v2, p0}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    const-string v1, "weatherTable"

    const-string v2, "content://weather/weather"

    invoke-static {v2, p0}, Ldev/duo/workspaceprobe/d;->a(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    :cond_2
    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "refreshError"

    invoke-static {}, Ldev/duo/workspaceprobe/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_3
    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultExtras(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 4
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 24
    throw p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSentFromPackage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.lsposed.miduo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string p1, "batteryActive"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Ldev/duo/workspaceprobe/d;->a(Landroid/content/Intent;)V

    .line 3
    :cond_1
    const-string p1, "kind"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string p2, "sync"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 6
    invoke-static {}, Ldev/duo/workspaceprobe/d;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Ldev/duo/workspaceprobe/d$c$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Ldev/duo/workspaceprobe/d$c$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
