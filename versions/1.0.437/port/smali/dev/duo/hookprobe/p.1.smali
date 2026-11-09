.class final Ldev/duo/hookprobe/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DuoLicense"

.field private static final b:J = 0xea60L

.field private static final c:J = 0x927c0L

.field private static d:Ldev/duo/hookprobe/S;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Z

.field private static j:Landroid/os/Handler;

.field private static k:Landroid/content/Context;

.field private static l:J

.field private static m:Z

.field private static n:Z

.field private static final o:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$YcJSv_NB0EP_8GW2jt_dKHMbtcw(I)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/p;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUSyedF8weuVZ41yoQmX-Ro4XbI()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/p;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$n1B_s0ejdxAeXiIlhz3Gfekgwbk()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/p;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$yYG9isVm42uKr3zISZETAjWAmOs()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/p;->a()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/p;->o:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .line 36
    const-string v0, "error"

    const-string v1, "DuoLicense"

    sget-object v2, Ldev/duo/hookprobe/p;->k:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 38
    :try_start_0
    sget-object v2, Ldev/duo/hookprobe/p;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "com.lsposed.miduo.config"

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_2

    .line 40
    :try_start_1
    const-string p0, "MiDuo app provider not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 46
    :try_start_2
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    .line 51
    :cond_2
    :try_start_3
    const-string v6, "trialTick"

    invoke-virtual {v2, v6, p0, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trialTick error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    .line 50
    :catchall_0
    move-exception p0

    .line 58
    if-eqz v2, :cond_4

    .line 59
    :try_start_5
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    :cond_4
    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 46
    :catchall_2
    move-exception p0

    .line 69
    :try_start_7
    const-string v0, "trialTick failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 72
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_3
    move-exception p0

    .line 73
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    throw p0
.end method

.method private static synthetic a()V
    .locals 1

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ldev/duo/hookprobe/p;->b(I)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 0

    add-int/lit8 p0, p0, 0x1

    .line 35
    invoke-static {p0}, Ldev/duo/hookprobe/p;->b(I)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/SharedPreferences;)V
    .locals 14

    const-class v1, Ldev/duo/hookprobe/p;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    if-eqz v0, :cond_0

    sget-object v0, Ldev/duo/hookprobe/p;->j:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    :try_start_1
    const-string v0, "ro.serialno"

    invoke-static {v0}, Ldev/duo/hookprobe/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "ro.boot.serialno"

    invoke-static {v0}, Ldev/duo/hookprobe/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_1
    invoke-static {v0}, Ldev/duo/hookprobe/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    sput-object v2, Ldev/duo/hookprobe/p;->e:Ljava/lang/String;

    .line 9
    const-string v3, "_global/licenseToken"

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ldev/duo/hookprobe/p;->f:Ljava/lang/String;

    sput-object v3, Ldev/duo/hookprobe/p;->g:Ljava/lang/String;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 11
    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    const-wide/16 v12, 0x3e8

    if-nez v3, :cond_2

    new-instance v4, Ldev/duo/hookprobe/S;

    const-string v3, "_global/trialUsedSec"

    const/4 v5, 0x0

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-long v5, v3

    mul-long v7, v5, v12

    sget-object v3, Ldev/duo/hookprobe/p;->f:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Ldev/duo/hookprobe/p;->d(Ljava/lang/String;)Z

    move-result v9

    const-wide/32 v5, 0x1b7740

    invoke-direct/range {v4 .. v11}, Ldev/duo/hookprobe/S;-><init>(JJZJ)V

    sput-object v4, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    .line 13
    :cond_2
    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-static {p0}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result p0

    invoke-virtual {v3, v10, v11, p0}, Ldev/duo/hookprobe/S;->b(JZ)Z

    .line 14
    const-string p0, "DuoLicense"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INIT serial="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EMPTY"

    goto :goto_0

    .line 15
    :cond_3
    const-string v0, "ok"

    .line 14
    :goto_0
    nop

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " licensed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v3}, Ldev/duo/hookprobe/S;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " usedSec="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    iget-wide v3, v3, Ldev/duo/hookprobe/S;->b:J

    div-long/2addr v3, v12

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " entitled="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    .line 16
    invoke-virtual {v3}, Ldev/duo/hookprobe/S;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    const-string p0, "debug.duo.device"

    invoke-static {p0, v2}, Ldev/duo/hookprobe/p;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 20
    :try_start_3
    const-string v0, "DuoLicense"

    const-string v2, "device property publish failed; verified license retained"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_1
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "DuoLicense"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldev/duo/hookprobe/p;->j:Landroid/os/Handler;

    .line 24
    new-instance p0, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 6
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 26
    :try_start_4
    const-string v0, "DuoLicense"

    const-string v2, "license initialization incomplete; only verified licenses allowed"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v1

    return-void

    .line 2
    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ldev/duo/hookprobe/p;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/p;->b(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static declared-synchronized a(Ljava/lang/String;Z)Z
    .locals 6

    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object p1, Ldev/duo/hookprobe/p;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p0}, Ldev/duo/hookprobe/p;->d(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0

    return v3

    .line 29
    :cond_1
    :try_start_1
    sget-object v1, Ldev/duo/hookprobe/p;->g:Ljava/lang/String;

    invoke-static {p0, v1}, Ldev/duo/hookprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object p0, Ldev/duo/hookprobe/p;->g:Ljava/lang/String;

    sput-object p0, Ldev/duo/hookprobe/p;->f:Ljava/lang/String;

    .line 30
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 31
    sget-object p0, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {p0, v4, v5, p1}, Ldev/duo/hookprobe/S;->b(JZ)Z

    .line 32
    sget-object p0, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    sget-object p1, Ldev/duo/hookprobe/p;->f:Ljava/lang/String;

    invoke-static {p1}, Ldev/duo/hookprobe/p;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, v4, v5, p1}, Ldev/duo/hookprobe/S;->a(JZ)Z

    .line 33
    invoke-static {}, Ldev/duo/hookprobe/p;->d()V

    .line 34
    sget-object p0, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {p0}, Ldev/duo/hookprobe/S;->c()Z

    move-result p0

    if-nez p0, :cond_4

    sget-boolean p0, Ldev/duo/hookprobe/p;->n:Z

    if-eqz p0, :cond_3

    sget-object p0, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {p0}, Ldev/duo/hookprobe/S;->b()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v3

    :cond_4
    :goto_0
    monitor-exit v0

    return v2

    .line 27
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static synthetic b()V
    .locals 4

    .line 33
    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 34
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Ldev/duo/hookprobe/p;->m:Z

    .line 35
    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldev/duo/hookprobe/S;->a(J)Z

    move-result v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 37
    const-string v0, "tick"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ldev/duo/hookprobe/p;->b(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Ldev/duo/hookprobe/p;->d()V

    return-void

    :catchall_0
    move-exception v1

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static b(I)V
    .locals 8

    .line 1
    const-string v1, "DuoLicense"

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSystemContext"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    .line 3
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 6
    new-instance v3, Ldev/duo/hookprobe/p$a;

    invoke-direct {v3}, Ldev/duo/hookprobe/p$a;-><init>()V

    sget-object v6, Ldev/duo/hookprobe/p;->j:Landroid/os/Handler;

    const/4 v7, 0x4

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 12
    sput-object v2, Ldev/duo/hookprobe/p;->k:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Ldev/duo/hookprobe/p;->b(Z)V

    .line 14
    invoke-static {}, Ldev/duo/hookprobe/n;->d()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READY screen receiver attempt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    const/16 v3, 0x5a

    if-eq p0, v2, :cond_0

    if-ne p0, v3, :cond_1

    .line 18
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen receiver not registered, attempt "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    if-ge p0, v3, :cond_2

    .line 19
    sget-object v0, Ldev/duo/hookprobe/p;->j:Landroid/os/Handler;

    new-instance v1, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda3;-><init>(I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 11

    .line 43
    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    iget-wide v1, v1, Ldev/duo/hookprobe/S;->b:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/hookprobe/p;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    const-string v5, "error"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 49
    const-class v5, Ldev/duo/hookprobe/p;

    monitor-enter v5

    .line 50
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 51
    sget-object v8, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    const-string v9, "trialUsedSec"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v9, v1

    mul-long/2addr v9, v3

    invoke-virtual {v8, v6, v7, v9, v10}, Ldev/duo/hookprobe/S;->a(JJ)Z

    move-result v1

    or-int/2addr v1, v2

    .line 52
    const-string v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/p;->f:Ljava/lang/String;

    .line 53
    sget-object v2, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-static {v0}, Ldev/duo/hookprobe/p;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v6, v7, v0}, Ldev/duo/hookprobe/S;->a(JZ)Z

    move-result v0

    or-int v2, v1, v0

    .line 54
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 57
    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 58
    :try_start_2
    const-string v1, "DuoLicense"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ENTITLEMENT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v5}, Ldev/duo/hookprobe/S;->b()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " licensed="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v5}, Ldev/duo/hookprobe/S;->c()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " usedSec="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    iget-wide v5, v5, Ldev/duo/hookprobe/S;->b:J

    div-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_2

    .line 59
    const-string p0, "app"

    .line 60
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    invoke-static {}, Ldev/duo/hookprobe/n;->d()V

    return-void

    .line 59
    :catchall_1
    move-exception p0

    .line 65
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    .line 66
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 40
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " failed"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DuoLicense"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 67
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "set"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Z)V
    .locals 9

    .line 20
    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 22
    sget-object v3, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v3, v1, v2, p0}, Ldev/duo/hookprobe/S;->c(JZ)Z

    move-result v3

    .line 23
    const/4 v4, 0x1

    sput-boolean v4, Ldev/duo/hookprobe/p;->n:Z

    if-eqz p0, :cond_0

    .line 25
    sget-object v5, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v5}, Ldev/duo/hookprobe/S;->b()Z

    move-result v5

    if-nez v5, :cond_0

    sget-wide v5, Ldev/duo/hookprobe/p;->l:J

    sub-long v5, v1, v5

    const-wide/32 v7, 0x927c0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 26
    sput-wide v1, Ldev/duo/hookprobe/p;->l:J

    .line 27
    :cond_1
    invoke-static {}, Ldev/duo/hookprobe/p;->d()V

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string v0, "DuoLicense"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCREEN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_2

    const-string v2, "on"

    goto :goto_1

    :cond_2
    const-string v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v3, :cond_3

    const-string v2, " entitlement changed"

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    if-eqz p0, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 31
    const-string p0, "screen"

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Ldev/duo/hookprobe/p;->b(Ljava/lang/String;)V

    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, ""

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic c()V
    .locals 2

    .line 1
    new-instance v0, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ldev/duo/hookprobe/p$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "tick"

    invoke-static {v1, v0}, Ldev/duo/hookprobe/p;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static declared-synchronized d()V
    .locals 6

    const-class v0, Ldev/duo/hookprobe/p;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Ldev/duo/hookprobe/p;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v1}, Ldev/duo/hookprobe/S;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    invoke-virtual {v1}, Ldev/duo/hookprobe/S;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ldev/duo/hookprobe/p;->d:Ldev/duo/hookprobe/S;

    iget-wide v2, v1, Ldev/duo/hookprobe/S;->b:J

    iget-wide v4, v1, Ldev/duo/hookprobe/S;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-boolean v2, Ldev/duo/hookprobe/p;->m:Z

    if-eq v1, v2, :cond_3

    sget-object v2, Ldev/duo/hookprobe/p;->j:Landroid/os/Handler;

    if-nez v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sput-boolean v1, Ldev/duo/hookprobe/p;->m:Z

    if-eqz v1, :cond_2

    .line 4
    sget-object v1, Ldev/duo/hookprobe/p;->o:Ljava/lang/Runnable;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 5
    :cond_2
    :try_start_1
    sget-object v1, Ldev/duo/hookprobe/p;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    .line 6
    sget-object v0, Ldev/duo/hookprobe/p;->h:Ljava/lang/String;

    invoke-static {p0, v0}, Ldev/duo/hookprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sput-object p0, Ldev/duo/hookprobe/p;->h:Ljava/lang/String;

    .line 8
    sget-object v0, Ldev/duo/hookprobe/p;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Ldev/duo/hookprobe/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ldev/duo/hookprobe/p;->i:Z

    if-eqz p0, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TOKEN valid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-boolean v0, Ldev/duo/hookprobe/p;->i:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DuoLicense"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    sget-boolean p0, Ldev/duo/hookprobe/p;->i:Z

    return p0
.end method
