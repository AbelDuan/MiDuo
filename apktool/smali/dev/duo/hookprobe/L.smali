.class final Ldev/duo/hookprobe/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lio/github/libxposed/service/XposedService;

.field private static b:Z

.field private static volatile c:Landroid/content/Context;

.field static final d:Landroid/net/Uri;

.field static final e:Landroid/net/Uri;

.field static final f:Landroid/net/Uri;

.field static final g:Landroid/net/Uri;

.field static final h:Landroid/net/Uri;

.field static final i:Landroid/net/Uri;

.field static final j:Landroid/net/Uri;

.field static final k:Landroid/net/Uri;

.field static final l:Landroid/net/Uri;

.field static final m:Landroid/net/Uri;

.field static final n:Landroid/net/Uri;

.field static final o:Landroid/net/Uri;

.field static final p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$97wwt0MGradfr-bmNp8XdPUsLvw(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/L;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://dev.duo.hookprobe.config/duoState"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->d:Landroid/net/Uri;

    .line 6
    const-string v0, "content://dev.duo.hookprobe.config/duoRail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->e:Landroid/net/Uri;

    .line 8
    const-string v0, "content://dev.duo.hookprobe.config/rotationSuggest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->f:Landroid/net/Uri;

    .line 9
    const-string v0, "content://dev.duo.hookprobe.config/standbyClock"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->g:Landroid/net/Uri;

    .line 10
    const-string v0, "content://dev.duo.hookprobe.config/notificationIcons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->h:Landroid/net/Uri;

    .line 11
    const-string v0, "content://dev.duo.hookprobe.config/searchButton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->i:Landroid/net/Uri;

    .line 12
    const-string v0, "content://dev.duo.hookprobe.config/pickButton"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->j:Landroid/net/Uri;

    .line 13
    const-string v0, "content://dev.duo.hookprobe.config/foldSplit"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->k:Landroid/net/Uri;

    .line 15
    const-string v0, "content://dev.duo.hookprobe.config/workbench"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->l:Landroid/net/Uri;

    .line 16
    const-string v0, "content://dev.duo.hookprobe.config/statusStyles"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->m:Landroid/net/Uri;

    .line 18
    const-string v0, "content://dev.duo.hookprobe.config/railCustom"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->n:Landroid/net/Uri;

    .line 20
    const-string v0, "content://dev.duo.hookprobe.config/iosNc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/L;->o:Landroid/net/Uri;

    .line 21
    new-instance v0, Ldev/duo/hookprobe/L$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ldev/duo/hookprobe/L$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/L;->p:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lio/github/libxposed/service/XposedService;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/L;->a:Lio/github/libxposed/service/XposedService;

    return-object v0
.end method

.method static a(J)Lio/github/libxposed/service/XposedService;
    .locals 2

    .line 40
    invoke-static {}, Ldev/duo/hookprobe/L;->d()V

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 42
    :goto_0
    sget-object p0, Ldev/duo/hookprobe/L;->a:Lio/github/libxposed/service/XposedService;

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const-wide/16 p0, 0x32

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 43
    :cond_0
    sget-object p0, Ldev/duo/hookprobe/L;->a:Lio/github/libxposed/service/XposedService;

    return-object p0
.end method

.method static synthetic a(Lio/github/libxposed/service/XposedService;)Lio/github/libxposed/service/XposedService;
    .locals 0

    .line 2
    sput-object p0, Ldev/duo/hookprobe/L;->a:Lio/github/libxposed/service/XposedService;

    return-object p0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Ldev/duo/hookprobe/L;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v1

    .line 38
    :cond_0
    sput-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    .line 39
    invoke-static {}, Ldev/duo/hookprobe/L;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 36
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    const-string p0, "_global/master"

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    const-string v1, "/enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_global/licenseToken"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->r(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {p1}, Ldev/duo/hookprobe/P;->u(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    :cond_0
    sget-object v1, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Ldev/duo/hookprobe/L;->d:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7
    invoke-static {p1}, Ldev/duo/hookprobe/P;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    sget-object v2, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Ldev/duo/hookprobe/L;->e:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v3, Ldev/duo/hookprobe/L;->e:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 10
    const-string v1, "_global/rotationSuggest"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_global/rotationPortraitRight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    const-string v1, "_global/rotationLandscapeRight"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    :cond_3
    sget-object v1, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Ldev/duo/hookprobe/L;->f:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 13
    :cond_4
    sget-boolean v1, Ldev/duo/hookprobe/o;->i:Z

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    .line 14
    const-string v1, "_global/standbyClock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 15
    :cond_5
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->g:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 16
    const-string p0, "_global/notificationIcons"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 17
    :cond_7
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->h:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 18
    const-string p0, "_global/searchButton"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 19
    :cond_9
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->i:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_a
    if-eqz p1, :cond_b

    .line 20
    const-string p0, "_global/pickButton"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 21
    :cond_b
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->j:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_c
    if-eqz p1, :cond_d

    .line 22
    const-string p0, "_global/foldSplit"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "_global/foldNudge"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 23
    :cond_d
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->k:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 24
    const-string p0, "_global/workbench"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 25
    :cond_f
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->l:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_10
    if-eqz p1, :cond_11

    .line 26
    const-string p0, "_global/cellularStyle"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "_global/statusThin"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    .line 27
    const-string p0, "_global/percentTop"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "_global/statusDy/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 28
    :cond_11
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->m:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_12
    if-eqz p1, :cond_13

    .line 29
    const-string p0, "_global/railCustom"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "_global/railSidebarApps"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    .line 30
    const-string p0, "_global/railSidebarFreeform"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "_global/railSidebarKeyEnd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 31
    :cond_13
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->n:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_14
    if-eqz p1, :cond_15

    .line 32
    const-string p0, "ios_notification_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 33
    :cond_15
    sget-object p0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Ldev/duo/hookprobe/L;->o:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_16
    if-eqz p1, :cond_17

    .line 34
    const-string p0, "/pageColors/_revision"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x15

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 36
    sget-object p1, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dev.duo.hookprobe.config/pageTones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_17
    return-void
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/L;->c:Landroid/content/Context;

    return-object v0
.end method

.method static c()Lio/github/libxposed/service/XposedService;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/L;->a:Lio/github/libxposed/service/XposedService;

    return-object v0
.end method

.method static declared-synchronized d()V
    .locals 2

    const-class v0, Ldev/duo/hookprobe/L;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Ldev/duo/hookprobe/L;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Ldev/duo/hookprobe/L;->b:Z

    .line 3
    new-instance v1, Ldev/duo/hookprobe/L$a;

    invoke-direct {v1}, Ldev/duo/hookprobe/L$a;-><init>()V

    invoke-static {v1}, Lio/github/libxposed/service/XposedServiceHelper;->registerListener(Lio/github/libxposed/service/XposedServiceHelper$OnServiceListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
