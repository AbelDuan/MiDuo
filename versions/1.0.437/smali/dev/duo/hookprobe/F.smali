.class public final Ldev/duo/hookprobe/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Ljava/lang/String; = null

.field private static c:J = 0x0L

.field public static final d:Ljava/lang/String; = "debug.duo.device"


# direct methods
.method public static synthetic $r8$lambda$36K58_pA4UhrsoePQ-l4vxar9FA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/F;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://dev.duo.hookprobe.config/pickState"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/F;->a:Landroid/net/Uri;

    .line 2
    const-string v0, ""

    sput-object v0, Ldev/duo/hookprobe/F;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    const-class v0, Ldev/duo/hookprobe/F;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v2, Ldev/duo/hookprobe/F;->b:Ljava/lang/String;

    const-string v3, "package"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-wide v2, Ldev/duo/hookprobe/F;->c:J

    const-string v4, "token"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 7
    sget-object v2, Ldev/duo/hookprobe/F;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "active"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static declared-synchronized a(Landroid/content/Context;J)V
    .locals 3

    const-class v0, Ldev/duo/hookprobe/F;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-wide v1, Ldev/duo/hookprobe/F;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    monitor-exit v0

    return-void

    .line 9
    :cond_0
    :try_start_1
    const-string p1, ""

    sput-object p1, Ldev/duo/hookprobe/F;->b:Ljava/lang/String;

    const-wide/16 p1, 0x1

    add-long/2addr v1, p1

    .line 10
    sput-wide v1, Ldev/duo/hookprobe/F;->c:J

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Ldev/duo/hookprobe/F;->a:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 7
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Ldev/duo/hookprobe/F;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p1, Ldev/duo/hookprobe/F;->b:Ljava/lang/String;

    .line 2
    sget-wide v1, Ldev/duo/hookprobe/F;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Ldev/duo/hookprobe/F;->c:J

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Ldev/duo/hookprobe/F;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Ldev/duo/hookprobe/B;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    .line 13
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xc

    if-gt v2, v3, :cond_1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    sub-int/2addr v2, v4

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v3, :cond_1

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v3, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ldev/duo/hookprobe/F$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/hookprobe/F$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "MiDuoToneShare"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
