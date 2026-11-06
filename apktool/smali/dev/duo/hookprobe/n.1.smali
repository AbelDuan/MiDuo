.class final Ldev/duo/hookprobe/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DuoCompat"

.field static final b:J = 0xa5faf64L

.field static final c:J = 0xabf9183L

.field static final d:J = 0xc2368d6L

.field static final e:J = 0x138268edL

.field private static final f:Ljava/lang/String; = "/enabled"

.field private static volatile g:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static volatile h:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/lang/String; = null

.field private static volatile k:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/lang/Boolean; = null

.field private static volatile m:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final o:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Ljava/util/concurrent/ScheduledExecutorService; = null

.field private static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/reflect/Field; = null

.field private static u:Ljava/lang/reflect/Field; = null

.field private static v:Ljava/lang/reflect/Method; = null

.field private static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Ljava/lang/String; = "com.tencent.mm"

.field private static final z:Ljava/lang/String; = ".plugin.appbrand.ui."


# direct methods
.method public static synthetic $r8$lambda$-LeXCl7_euf9PBynk4c9M9MhwrY(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3WVMKN0yttHVoutyaxmevArjX6c(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->b(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6dE_9XIxhFe2NkISpaVnO2NFPCk(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D6aJTTrUWxcQl7XeL1038eWl04k(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ED8pLwQKSnYOQ6lQDxsmnxd2Z5U(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HL-dX6Kr04G9D-njEtiO4Hm7dEw(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K0MOSVbaqGTkaRLEl-K8vcvr6Bg(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K2RXI0YBiCJJVPTYRHuctsvg_F8()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/n;->h()V

    return-void
.end method

.method public static synthetic $r8$lambda$Nhszzr2YOhVxnBQvC2BTyLZD2iU(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p12}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_NbTQLnOPlp-pLFOekCc0GFdB44(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aiiPmk-uEuD5U5Cm7GTGivO0GVc(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cAazHFJ8gypDRiFlbKHhEVqOyUE(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d0hWz3U6HPRKWHMilQo-6t_yilk(Lio/github/libxposed/api/XposedModule;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iba2_yFqyewSg3RgdoXWpE0PCRE(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qunFQ9S6TDRVSkAvHDZV4uZVDww(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wvGDeErTJhU0OjbCgQ8HLyY7uIo(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ldev/duo/hookprobe/Q;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Ldev/duo/hookprobe/n;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ldev/duo/hookprobe/Q;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sput-object v0, Ldev/duo/hookprobe/n;->h:Ljava/util/Map;

    .line 3
    const-string v1, "com.tencent.mm"

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Ldev/duo/hookprobe/n;->i:Ljava/util/Set;

    .line 7
    sput-object v0, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->o:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->p:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->r:Ljava/lang/ThreadLocal;

    .line 67
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->s:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/n;->w:Ljava/util/Map;

    .line 470
    new-instance v0, Ljava/util/HashSet;

    const-string v10, "AppBrandUI4"

    const-string v11, "AppBrandUI4MM"

    const-string v1, "AppBrandUI"

    const-string v2, "AppBrandUI00"

    const-string v3, "AppBrandUI01"

    const-string v4, "AppBrandUI02"

    const-string v5, "AppBrandUI03"

    const-string v6, "AppBrandUI04"

    const-string v7, "AppBrandUI1"

    const-string v8, "AppBrandUI2"

    const-string v9, "AppBrandUI3"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldev/duo/hookprobe/n;->x:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0xa5faf64

    cmp-long v3, v1, v3

    const-wide/32 v4, 0xc2368d6

    const-wide/32 v6, 0x138268ed

    if-eqz v3, :cond_0

    const-wide/32 v8, 0xabf9183

    cmp-long v3, v1, v8

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_0

    .line 170
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 171
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    cmp-long v6, v1, v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 173
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v8, Ldev/duo/hookprobe/n;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v0

    .line 174
    :goto_0
    invoke-static {v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v6, :cond_2

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p0, v1, v4

    if-eqz p0, :cond_3

    move v0, v7

    .line 176
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compat:"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    const-string v4, "DuoCompat"

    const-string v5, "="

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "COMPAT "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v7, " first pkg="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v6, :cond_5

    .line 177
    invoke-static {v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "host:"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x3

    invoke-static {p0, v6}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HOST compat "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " pkg="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 196
    const-string v0, "hostError"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DuoCompat"

    const-string v1, "host owner unreadable, native kept"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Ldev/duo/hookprobe/n;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 199
    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 201
    :try_start_1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_1
    return-object p0

    :catchall_1
    move-exception p0

    if-nez v1, :cond_2

    .line 205
    sget-object p1, Ldev/duo/hookprobe/n;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    .line 206
    :cond_2
    sget-object p1, Ldev/duo/hookprobe/n;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 207
    :goto_2
    throw p0
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ldev/duo/hookprobe/Q;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v1

    .line 146
    :try_start_0
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p0, p7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 148
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 149
    sget-object p7, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    const/4 v0, 0x0

    if-nez p7, :cond_1

    move-object p7, v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {p7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, [I

    .line 151
    :goto_0
    sget-object v2, Ldev/duo/hookprobe/n;->h:Ljava/util/Map;

    if-nez p7, :cond_2

    .line 152
    invoke-static {v2, p1}, Ldev/duo/hookprobe/P;->c(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 153
    :cond_2
    move-object v3, p4

    invoke-virtual {p2, v1}, Ldev/duo/hookprobe/Q;->a(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object p4

    .line 154
    invoke-static {p4}, Ldev/duo/hookprobe/Q;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v5, "inner"

    const/4 v6, 0x1

    if-eqz p7, :cond_4

    .line 157
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    aget p0, p7, p0

    goto :goto_1

    .line 159
    :cond_4
    const-string p7, "outer"

    invoke-virtual {p7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p7

    const/16 v7, 0x490

    if-ne p7, v7, :cond_7

    .line 160
    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v6, :cond_7

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v6, :cond_5

    goto :goto_2

    .line 161
    :cond_5
    invoke-static {v2, p1}, Ldev/duo/hookprobe/P;->b(Ljava/util/Map;Ljava/lang/String;)I

    move-result p0

    .line 157
    :goto_1
    nop

    .line 161
    if-nez p0, :cond_6

    goto :goto_2

    .line 164
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 165
    invoke-virtual {p6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    move-object p5, p2

    move-object p2, p1

    move-object p1, p5

    move p5, p0

    invoke-virtual/range {p1 .. p6}, Ldev/duo/hookprobe/Q;->a(Ljava/lang/Object;Landroid/util/SparseArray;Landroid/graphics/Rect;IZ)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    .line 152
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 168
    const-string p1, "serverTopError"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "DuoCompat"

    const-string p2, "SERVER_TOP failed, native insets kept"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_2
    return-object v1
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v0

    .line 182
    :goto_0
    const-string v1, "positionError"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DuoCompat"

    const-string v2, "position owner unreadable, native kept"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_1
    :goto_1
    sget-object p1, Ldev/duo/hookprobe/n;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 185
    invoke-static {v0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 187
    :try_start_2
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_4

    .line 189
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_4

    .line 190
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_4
    return-object p0

    :catchall_2
    move-exception p0

    if-nez v1, :cond_5

    .line 191
    sget-object p1, Ldev/duo/hookprobe/n;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_5

    .line 192
    :cond_5
    sget-object p1, Ldev/duo/hookprobe/n;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 193
    :goto_5
    throw p0
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v0, p11

    const-string v1, "DuoCompat"

    .line 53
    invoke-interface/range {p12 .. p12}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v2

    .line 55
    const/4 v3, 0x3

    :try_start_0
    invoke-interface/range {p12 .. p12}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v4

    .line 57
    sget-object v5, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    sget-object v6, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 58
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 60
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_8

    .line 61
    move-object/from16 v6, p2

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    move-object/from16 v7, p3

    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v6, p0}, Ldev/duo/hookprobe/E;->a(II)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_1

    .line 62
    :cond_1
    sget-object p0, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 63
    move-object/from16 v7, p4

    invoke-virtual {v7, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    move-object/from16 v7, p5

    invoke-virtual {v7, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v8, :cond_2

    goto/16 :goto_1

    .line 65
    :cond_2
    move-object/from16 v7, p6

    invoke-virtual {v7, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_7

    .line 66
    move-object/from16 v7, p7

    invoke-virtual {v7, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    move-object/from16 v7, p8

    invoke-virtual {v7, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_0

    .line 70
    :cond_3
    const/4 v7, 0x0

    move-object/from16 v8, p12

    invoke-interface {v8, v7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/res/Configuration;

    .line 71
    move-object/from16 v9, p9

    invoke-virtual {v9, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Configuration;

    .line 72
    iget v9, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-nez v9, :cond_4

    iget v9, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 73
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v5, v9

    int-to-float v5, v5

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 74
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 75
    iget v11, v8, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    int-to-float v12, v5

    div-float/2addr v11, v12

    .line 76
    iput v5, v10, Landroid/content/res/Configuration;->densityDpi:I

    .line 77
    iget v13, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 78
    iget v13, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    iput v13, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 79
    iget v13, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 80
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 81
    iput v5, v11, Landroid/content/res/Configuration;->densityDpi:I

    .line 82
    iput v7, v11, Landroid/content/res/Configuration;->screenLayout:I

    iput v7, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v7, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 83
    iget v5, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v5, :cond_5

    iget v5, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_5
    int-to-float v5, v5

    int-to-float v7, v9

    mul-float/2addr v5, v7

    div-float/2addr v5, v12

    .line 84
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v11, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 85
    filled-new-array {v11, v10, v6}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, p10

    invoke-virtual {v6, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 87
    const-string p0, "densityGeometry"

    invoke-static {p0, v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "OUTER_DENSITY rejected: native resource computation changed window geometry"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 90
    :cond_6
    invoke-virtual {v4, v11}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v2

    .line 91
    :cond_7
    :goto_0
    const-string p0, "densityUnsupported"

    invoke-static {p0, v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OUTER_DENSITY unsupported size-compat page "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 72
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 117
    const-string v0, "densityError"

    invoke-static {v0, v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "OUTER_DENSITY calculation failed; native configuration kept"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_1
    return-object v2
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 209
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    :try_start_0
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 212
    sget-object p1, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 214
    iget p1, p0, Landroid/graphics/Rect;->left:I

    if-nez p1, :cond_3

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-nez p1, :cond_3

    iget p1, p0, Landroid/graphics/Rect;->right:I

    const/16 p2, 0x3c3

    if-ne p1, p2, :cond_3

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    const/16 p1, 0x6b0

    if-eq p0, p1, :cond_2

    goto :goto_0

    .line 216
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 212
    :catchall_0
    move-exception p0

    .line 218
    const-string p1, "dialogError"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "DuoCompat"

    const-string p2, "dialog owner unreadable, native parent kept"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "DuoCompat"

    .line 118
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 120
    const/4 v2, 0x3

    :try_start_0
    invoke-interface {p7}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    .line 122
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p1, v4

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 125
    const/4 p2, 0x1

    aget-object p3, v1, p2

    invoke-virtual {p4, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_2

    sget-object p0, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 127
    :cond_1
    sget-object p0, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 128
    invoke-virtual {p5, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_2

    new-instance p3, Landroid/graphics/Rect;

    const/16 p5, 0x490

    const/16 v3, 0x6b0

    const/4 v5, 0x0

    invoke-direct {p3, v5, v5, p5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 129
    invoke-virtual {p6, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Landroid/graphics/Rect;

    const/16 p5, 0x3c3

    invoke-direct {p3, v5, v5, p5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    invoke-virtual {p6, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p4, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 133
    aput-object p1, v1, p2

    .line 134
    const/16 p1, 0x7d1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 135
    const-string p1, "imeLayer"

    invoke-static {p1, v2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IME_LAYER above Duo task "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception p0

    .line 141
    const-string p1, "imeLayerError"

    invoke-static {p1, v2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "IME layer lookup failed, native anchor kept"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_2
    :goto_1
    invoke-interface {p7, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/libxposed/api/XposedModule;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Executable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Executable;

    .line 256
    :try_start_0
    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->deoptimize(Ljava/lang/reflect/Executable;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deoptimize threw for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DuoCompat"

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    :goto_1
    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Executable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 263
    instance-of v6, v4, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_1

    const-string v4, "<init>"

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Executable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 264
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ""

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DuoCompatRefresh"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 269
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/n;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-string v0, "changeLog"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHANGE key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    const-string v0, "/enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ldev/duo/hookprobe/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ldev/duo/hookprobe/P;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "_global/master"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    const-string v0, "_global/licenseToken"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ldev/duo/hookprobe/P;->u(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ldev/duo/hookprobe/P;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->a(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedModule;)V
    .locals 0

    .line 52
    invoke-static {p0}, Ldev/duo/hookprobe/n;->b(Lio/github/libxposed/api/XposedModule;)V

    return-void
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 41
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->b(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 42
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->d(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 43
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->g(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 44
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->c(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 45
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->h(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 46
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->f(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 47
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->i(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 48
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->e(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 49
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda13;-><init>(Lio/github/libxposed/api/XposedModule;)V

    const-string p0, "DuoCompatConfig"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Executable;",
            ">;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 251
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    const-class v0, Ldev/duo/hookprobe/n;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    .line 8
    sget-object v2, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    .line 9
    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->c(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    .line 11
    sget-object v3, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    .line 13
    new-instance v4, Ljava/util/HashSet;

    if-nez v3, :cond_0

    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 13
    :goto_0
    nop

    .line 14
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_4

    .line 16
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-nez p0, :cond_4

    .line 20
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 21
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 22
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    const/4 v8, 0x0

    aget v7, v7, v8

    const/4 v9, 0x1

    if-nez v7, :cond_2

    move v7, v9

    goto :goto_2

    :cond_2
    move v7, v8

    :goto_2
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    aget v10, v10, v8

    if-nez v10, :cond_3

    move v8, v9

    :cond_3
    if-eq v7, v8, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 27
    sget-object v3, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 28
    new-instance v3, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda8;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 29
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    .line 31
    const-string p1, "master"

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string p1, "outerScale"

    :cond_6
    :goto_3
    invoke-static {v4, p1}, Ldev/duo/hookprobe/n;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    sget-object v0, Ldev/duo/hookprobe/n;->i:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Ldev/duo/hookprobe/n;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda9;-><init>(Ljava/util/Set;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4b0

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    if-eqz p0, :cond_8

    .line 36
    invoke-static {}, Ldev/duo/hookprobe/n;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance p1, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda10;

    invoke-direct {p1}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static synthetic a(Ljava/util/Set;)V
    .locals 0

    .line 38
    invoke-static {p0}, Ldev/duo/hookprobe/n;->b(Ljava/util/Set;)V

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 240
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Ldev/duo/hookprobe/n;->p:Ljava/util/Set;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    .line 243
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-nez v1, :cond_1

    .line 244
    monitor-exit v0

    return-void

    .line 245
    :cond_1
    invoke-static {}, Ldev/duo/hookprobe/n;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    new-instance v1, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-interface {p0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 246
    monitor-exit v0

    return-void

    .line 244
    :catchall_0
    move-exception p0

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 219
    sget-object v1, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    sget-object v2, Ldev/duo/hookprobe/P;->i:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    sget-object v2, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 224
    :cond_2
    sget-object v2, Ldev/duo/hookprobe/n;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/content/ComponentName;

    :goto_0
    if-eqz v3, :cond_3

    .line 225
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0

    :catchall_0
    move-exception p0

    .line 227
    const-string v1, "hostError"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "DuoCompat"

    const-string v2, "host task unreadable, native kept"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    .line 39
    sget-object v0, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 3

    .line 270
    sget-object v0, Ldev/duo/hookprobe/n;->w:Ljava/util/Map;

    monitor-enter v0

    .line 271
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-lt v1, p1, :cond_1

    .line 273
    monitor-exit v0

    return v2

    :cond_1
    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    monitor-exit v0

    return p1

    .line 273
    :catchall_0
    move-exception p0

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 228
    const-string v0, "DuoCompat"

    const-string v1, "PROP "

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "set"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " not set"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static a(Z)Z
    .locals 4

    const-string v0, "DuoCompat"

    .line 233
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "set"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz p0, :cond_0

    .line 234
    const-string v2, "1"

    goto :goto_0

    .line 235
    :cond_0
    const-string v2, "0"

    .line 234
    :goto_0
    nop

    .line 235
    const-string v3, "debug.duo.master"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MASTER debug.duo.master="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    .line 234
    :catchall_0
    move-exception p0

    .line 239
    const-string v1, "MASTER property not set; the desktop keeps its recorded layout"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Ldev/duo/hookprobe/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.tencent.mm"

    invoke-static {v1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "miniApp"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MINIAPP fullscreen bypass first "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DuoCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 43
    :cond_2
    :goto_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/n;->e()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lio/github/libxposed/api/XposedModule;)V
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const-string v2, "DuoCompat"

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 44
    :try_start_0
    const-string v4, "duo_top"

    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 45
    nop

    .line 46
    sget-object v5, Ldev/duo/hookprobe/n;->o:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 47
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initial attempt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldev/duo/hookprobe/n;->c(Ljava/util/Map;Ljava/lang/String;)Z

    .line 50
    new-instance v4, Ljava/util/HashSet;

    sget-object v5, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 51
    sget-object v5, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    const-string v5, "config ready"

    invoke-static {v4, v5}, Ldev/duo/hookprobe/n;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ldev/duo/hookprobe/n;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_1

    .line 56
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config not readable, attempt "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    nop

    .line 57
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_2
    const-string p0, "config unreadable, native answers kept"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 7

    const-string v0, "getMinAspectRatio"

    const-string v1, "DuoCompat"

    const-string v2, "isChangeEnabled"

    .line 3
    const/4 v3, 0x0

    :try_start_0
    const-class v4, Landroid/content/pm/ApplicationInfo;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 4
    const-string v3, "compat"

    .line 5
    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v4

    new-instance v6, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v4, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-class v6, Landroid/content/pm/ActivityInfo;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v5, "com.android.server.wm.AppCompatUtils"

    invoke-static {v4, p1, v5, v2}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v2, "com.android.server.wm.AppCompatAspectRatioOverrides"

    const-string v5, "shouldOverrideMinAspectRatio"

    invoke-static {v4, p1, v2, v5}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v2, "com.android.server.wm.AppCompatAspectRatioPolicy"

    invoke-static {v4, p1, v2, v0}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v2, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy"

    invoke-static {v4, p1, v2, v0}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "com.android.server.wm.ConfigurationContainer"

    const-string v2, "applySizeOverrideIfNeeded"

    invoke-static {v4, p1, v0, v2}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "com.android.server.wm.AppCompatSandboxingPolicy"

    const/4 v2, 0x0

    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 28
    invoke-static {v4, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "READY compat hook, deoptimized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v4}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compat hook "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez v3, :cond_0

    const-string v0, "NOT installed, native answers kept"

    goto :goto_0

    .line 33
    :cond_0
    const-string v0, "installed but deoptimize list incomplete"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static b(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    const-string v0, "DuoCompat"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 63
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESTART scale-changed apps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tasks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ldev/duo/hookprobe/RootTaskRecompute;->b(Ljava/util/Set;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    const-string v3, "RESTART failed"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    .line 71
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    throw p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 35
    const-string v1, "com.tencent.mm/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string v1, "com.tencent.mm."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 38
    :cond_1
    const-string v1, ".plugin.appbrand.ui."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ldev/duo/hookprobe/n;->x:Ljava/util/Set;

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static synthetic b(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2

    .line 2
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v1, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ldev/duo/hookprobe/n;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p0, "position"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "DuoCompat"

    const-string v0, "POSITION left for a Duo app"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    :goto_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/n;->f()V

    return-void
.end method

.method private static c(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 7

    const-string v0, "DuoCompat"

    .line 6
    :try_start_0
    const-string v1, "com.android.server.wm.WindowStateStubImpl"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 7
    const-string v3, "mWindowState"

    invoke-static {v1, v3}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 8
    const-string v4, "com.android.server.wm.WindowState"

    invoke-static {v4, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mActivityRecord"

    invoke-static {v4, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 9
    const-string v5, "com.android.server.wm.ActivityRecord"

    invoke-static {v5, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getBounds"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 11
    const-string v5, "isInSpecificEmbeddedSplitDialog"

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    new-instance v5, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4, v3, v2}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda3;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-string v2, "com.android.server.wm.WindowManagerService"

    const-string v3, "addWindowInner"

    invoke-static {v1, p1, v2, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "com.android.server.wm.DisplayContent"

    const-string v3, "shouldImeAttachedToApp"

    invoke-static {v1, p1, v2, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READY embedded dialog hook, deoptimized "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v1}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 31
    const-string p1, "embedded dialog hook incomplete, check hook and deoptimize state"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-static {p0}, Ldev/duo/hookprobe/n;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized c(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-class v0, Ldev/duo/hookprobe/n;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return v1

    .line 32
    :cond_0
    :try_start_0
    sput-object p0, Ldev/duo/hookprobe/n;->m:Ljava/util/Map;

    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 34
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 36
    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v5, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    sget-object v3, Ldev/duo/hookprobe/P;->i:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 41
    invoke-static {p0}, Ldev/duo/hookprobe/P;->a(Ljava/util/Map;)Z

    move-result v3

    .line 42
    const-string v4, "_global/licenseToken"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x1


    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v1

    .line 45
    :goto_1
    sget-object v4, Ldev/duo/hookprobe/n;->l:Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v5

    .line 46
    :goto_3
    sget-object v6, Ldev/duo/hookprobe/n;->l:Ljava/lang/Boolean;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v3, :cond_9

    .line 47
    :cond_7
    invoke-static {v3}, Ldev/duo/hookprobe/n;->a(Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Ldev/duo/hookprobe/n;->l:Ljava/lang/Boolean;

    goto :goto_4

    .line 52
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MASTER change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " NOT applied reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DuoCompat"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 57
    :cond_9
    :goto_4
    sget-object v6, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    if-eqz v6, :cond_a

    if-eq v3, v4, :cond_a

    move v1, v5

    .line 58
    :cond_a
    sget-object v4, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    if-eqz v3, :cond_b

    move-object v5, v2

    goto :goto_5

    .line 59
    :cond_b
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 60
    :goto_5
    invoke-static {p0, v5}, Ldev/duo/hookprobe/P;->a(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    if-eqz v3, :cond_c

    move-object v6, p0

    goto :goto_6

    .line 61
    :cond_c
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_6
    sput-object v6, Ldev/duo/hookprobe/n;->h:Ljava/util/Map;

    if-eqz v3, :cond_d

    .line 62
    invoke-static {p0, v5}, Ldev/duo/hookprobe/P;->b(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    goto :goto_7

    :cond_d
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_7
    sput-object p0, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    .line 63
    sget-object p0, Ldev/duo/hookprobe/n;->k:Ljava/util/Map;

    const-string v5, "com.tencent.mm"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_e

    .line 64
    const-string p0, ""

    goto :goto_8

    :cond_e
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 65
    :goto_8
    sget-object v5, Ldev/duo/hookprobe/n;->j:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "debug.duo.scale.wx"

    invoke-static {v5, p0}, Ldev/duo/hookprobe/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    sput-object p0, Ldev/duo/hookprobe/n;->j:Ljava/lang/String;

    .line 66
    :cond_f
    const-string p0, "DuoCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONFIG duoApps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " master="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v4, :cond_10

    .line 67
    const-string v3, ""

    goto :goto_9

    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " before="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 31
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static d()V
    .locals 2

    .line 1
    sget-object v0, Ldev/duo/hookprobe/n;->m:Ljava/util/Map;

    const-string v1, "license"

    invoke-static {v0, v1}, Ldev/duo/hookprobe/n;->a(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "DuoCompat"

    const-string v3, "com.android.server.wm.ActivityRecord"

    const-string v4, "com.android.server.wm.DesktopAppCompatAspectRatioPolicy"

    const-string v5, "com.android.server.wm.AppCompatAspectRatioPolicy"

    .line 2
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 3
    const-string v8, "packageName"

    invoke-static {v7, v8}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    .line 4
    const-string v8, "com.android.server.wm.Task"

    invoke-static {v8, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "realActivity"

    invoke-static {v8, v9}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    sput-object v8, Ldev/duo/hookprobe/n;->u:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_2

    if-nez v8, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 8
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "getTask"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v13

    if-nez v13, :cond_0

    move-object v8, v12

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 9
    :cond_2
    if-eqz v8, :cond_6

    .line 13
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 14
    sput-object v8, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v9, v6

    move v10, v9

    :goto_2
    const-string v11, "getMinAspectRatio"

    const/4 v12, 0x2

    if-ge v9, v12, :cond_5

    :try_start_3
    aget-object v12, v8, v9

    .line 18
    invoke-static {v12, v6, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 19
    const-string v13, "mActivityRecord"

    invoke-static {v12, v13}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 20
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v12

    array-length v14, v12

    move v15, v6

    :goto_3
    if-ge v15, v14, :cond_4

    aget-object v6, v12, v15

    .line 21
    move-object/from16 v16, v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 22
    :cond_3
    invoke-virtual {v0, v6}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v6

    new-instance v8, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda5;

    invoke-direct {v8, v13}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda5;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {v6, v8}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    add-int/lit8 v10, v10, 0x1

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v16, v8

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x0

    goto :goto_2

    .line 8
    :catchall_1
    move-exception v0

    move v6, v10

    goto :goto_5

    .line 41
    :cond_5
    invoke-static {v7, v1, v3, v11}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "applyAspectRatio"

    invoke-static {v7, v1, v5, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "hasFixedAspectRatio"

    invoke-static {v7, v1, v5, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "calculateAspectRatio"

    invoke-static {v7, v1, v4, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v3, "hasMinAspectRatioOverride"

    invoke-static {v7, v1, v4, v3}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READY host hook="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/2, deoptimized "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v7}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 47
    :cond_6
    :try_start_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ActivityRecord.getTask"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 8
    :catchall_2
    move-exception v0

    const/4 v6, 0x0

    .line 83
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host hook installed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/2, embedded pages keep their own answer"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 7

    .line 84
    sget-object v0, Ldev/duo/hookprobe/n;->p:Ljava/util/Set;

    monitor-enter v0

    .line 85
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 90
    :try_start_1
    invoke-static {v1}, Ldev/duo/hookprobe/RootTaskRecompute;->a(Ljava/util/Set;)[I

    move-result-object v0

    .line 91
    const-string v4, "DuoCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REFRESH reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packages="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tasks="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_2
    const-string v4, "DuoCompat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REFRESH failed reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, " requested="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    .line 100
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw p0

    :catchall_2
    move-exception p0

    .line 102
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private static declared-synchronized e()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const-class v0, Ldev/duo/hookprobe/n;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Ldev/duo/hookprobe/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    :cond_0
    sget-object v1, Ldev/duo/hookprobe/n;->q:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static e(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "com.android.server.wm.DisplayContent"

    const-string v3, "DuoCompat"

    :try_start_0
    sget-object v4, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    sget-object v4, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 3
    const-string v4, "com.android.server.wm.ImeContainer"

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 4
    const-string v6, "com.android.server.wm.WindowContainer"

    invoke-static {v6, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 5
    invoke-static {v2, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 6
    const-string v8, "com.android.server.wm.WindowState"

    invoke-static {v8, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 7
    const-string v9, "com.android.server.wm.ConfigurationContainer"

    invoke-static {v9, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 8
    const-string v10, "getDisplayContent"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 9
    const-string v10, "getSurfaceControl"

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 10
    const-string v10, "getBounds"

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 11
    const-string v12, "getWindowingMode"

    invoke-virtual {v9, v12, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 12
    filled-new-array {v13, v6, v10, v9}, [Ljava/lang/reflect/Method;

    move-result-object v11

    :goto_0
    const/4 v12, 0x4

    if-ge v5, v12, :cond_0

    aget-object v12, v11, v5

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    const-string v5, "mImeLayeringTarget"

    invoke-static {v7, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    const-string v5, "mDisplayId"

    invoke-static {v7, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 14
    const-string v5, "mActivityRecord"

    invoke-static {v8, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 15
    const-string v5, "assignRelativeLayer"

    const-class v7, Landroid/view/SurfaceControl$Transaction;

    const-class v8, Landroid/view/SurfaceControl;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v7, v8, v11, v12}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v4

    new-instance v12, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda6;

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda6;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v12}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 45
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const-string v5, "assignRelativeLayerForIme"

    invoke-static {v4, v1, v2, v5}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READY task-relative IME hook, deoptimized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v4}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ActivityRecord task helpers unavailable"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    move-exception v0

    .line 95
    const-string v1, "IME layer hook NOT installed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static f()V
    .locals 9

    .line 22
    const-string v0, "DuoCompat"

    sget-object v1, Ldev/duo/hookprobe/n;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 24
    :try_start_0
    invoke-static {}, Ldev/duo/hookprobe/n;->i()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dev.duo.hookprobe.config"

    .line 25
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_1
    const-string v5, "duoState"

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-string v5, "error"

    if-eqz v4, :cond_4

    .line 27
    :try_start_2
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 31
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_2
    const-string v4, "app notified"

    invoke-static {v5, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    .line 34
    :try_start_3
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 37
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 38
    :cond_4
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duoState unavailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v4, :cond_5

    const-string v4, "no provider"

    goto :goto_3

    .line 39
    :cond_5
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    :goto_3
    nop

    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_6

    .line 45
    :try_start_5
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 48
    :cond_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 32
    :catchall_0
    move-exception v4

    .line 48
    if-eqz v3, :cond_7

    .line 49
    :try_start_6
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v3

    :try_start_7
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50
    :cond_7
    :goto_4
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 34
    :catchall_2
    move-exception v3

    .line 61
    :try_start_8
    const-string v4, "duoState failed"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3
    move-exception v0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw v0
.end method

.method private static f(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 12

    const-string v1, "DuoCompat"

    const-string v0, "com.android.server.wm.MiuiSizeCompatService"

    .line 1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 2
    const-string v4, "shouldUseFullscreenBypassInternal"

    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v4, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda14;

    invoke-direct {v4}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v3, v4}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const-string v4, "isFullscreenBypassActivity"

    invoke-static {v3, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v4, "shouldUseFullscreenBypass"

    invoke-static {v3, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v4, "isActiveFullscreenBypassActivity"

    invoke-static {v3, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v4, "isSizeCompatControlSupportedLocked"

    invoke-static {v3, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v5, "canUseWideFoldLandFsSuppress"

    const-string v6, "hasActiveFullscreenBypassActivityInProcess"

    const-string v7, "isFullscreenBypassOwnerRequestingLandscape"

    const-string v8, "resolveFixedAspectRatioIfNeeded"

    const-string v9, "shouldRestorePortraitForLockedWideFoldInnerCompat"

    const-string v10, "adaptCompatConfiguration"

    const-string v11, "refreshSizeCompatAfterFullscreenBypass"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    aget-object v4, v0, v2

    .line 18
    const-string v5, "com.android.server.wm.BoundsCompatController"

    invoke-static {v3, p1, v5, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "READY miniapp hook, deoptimized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v3}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 18
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 21
    const-string p1, "miniapp hook NOT installed, native answers kept"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static g(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 26

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "com.android.server.wm.ConfigurationContainer"

    const-string v3, "DuoCompat"

    :try_start_0
    sget-object v4, Ldev/duo/hookprobe/n;->t:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1

    sget-object v4, Ldev/duo/hookprobe/n;->v:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 4
    const-string v4, "com.android.server.wm.ActivityRecord"

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 5
    invoke-static {v2, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 6
    const-string v7, "com.android.server.wm.DisplayContent"

    invoke-static {v7, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 7
    const-string v8, "com.android.server.wm.TaskFragment"

    invoke-static {v8, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 8
    const-string v9, "com.android.server.wm.AppCompatSandboxingPolicy$ConfigOverrideHint"

    invoke-static {v9, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 9
    const-string v10, "com.android.server.wm.WindowContainer"

    invoke-static {v10, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mDisplayContent"

    invoke-static {v10, v11}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 10
    const-string v10, "mInitialDisplayWidth"

    invoke-static {v7, v10}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    const-string v10, "mInitialDisplayHeight"

    invoke-static {v7, v10}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    .line 11
    const-string v10, "mDisplayId"

    invoke-static {v7, v10}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 12
    const-class v7, Landroid/content/res/Configuration;

    const-string v10, "windowConfiguration"

    invoke-static {v7, v10}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v24

    .line 13
    const-string v7, "resolveOverrideConfiguration"

    const-class v10, Landroid/content/res/Configuration;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 14
    const-string v10, "getResolvedOverrideConfiguration"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 15
    const-string v10, "getWindowingMode"

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    const-string v10, "getActivityType"

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 16
    const-string v6, "getAppCompatDisplayInsets"

    invoke-virtual {v4, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 17
    const-string v6, "shouldCreateAppCompatDisplayInsets"

    invoke-virtual {v4, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    .line 18
    const-string v6, "inMiuiSizeCompatMode"

    invoke-virtual {v4, v6, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 19
    const-string v4, "computeConfigResourceOverrides"

    const-class v6, Landroid/content/res/Configuration;

    filled-new-array {v6, v6, v9}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    .line 20
    filled-new-array/range {v17 .. v23}, [Ljava/lang/reflect/Method;

    move-result-object v4

    :goto_0
    const/4 v6, 0x7

    if-ge v5, v6, :cond_0

    aget-object v6, v4, v5

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0, v7}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v4

    new-instance v12, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;

    move-object/from16 v25, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v25

    invoke-direct/range {v12 .. v24}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda0;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    invoke-interface {v4, v12}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 66
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v5, "onConfigurationChanged"

    invoke-static {v4, v1, v2, v5}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READY outer Activity density (user scale), native size-compat snapshots excluded, deoptimized "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v4}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "ActivityRecord task helpers unavailable"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    move-exception v0

    .line 136
    const-string v1, "OUTER_DENSITY NOT installed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static g()Z
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/n;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static h()V
    .locals 10

    .line 43
    const-string v0, "DuoCompat"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 45
    :try_start_0
    const-string v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentActivityThread"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getSystemContext"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 47
    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 48
    const-class v6, Landroid/app/ActivityManager;

    const-string v7, "forceStopPackage"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "com.miui.home"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 50
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 51
    const-class v6, Landroid/content/Context;

    const-string v7, "startActivityAsUser"

    const-class v8, Landroid/content/Intent;

    const-class v9, Landroid/os/UserHandle;

    filled-new-array {v8, v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-class v7, Landroid/os/UserHandle;

    const-string v8, "CURRENT"

    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "HOME reopened for the master switch"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    .line 58
    :try_start_1
    const-string v4, "HOME reopen failed; the desktop switches at its next start"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    throw v0
.end method

.method private static h(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 9

    const-string v0, "com.android.server.wm.ActivityRecord"

    const-string v1, "DuoCompat"

    .line 1
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.android.server.wm.AppCompatReachabilityOverrides"

    invoke-static {v3, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 2
    const-string v4, "getHorizontalPositionMultiplier"

    const-class v5, Landroid/content/res/Configuration;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 3
    const-string v5, "mActivityRecord"

    invoke-static {v3, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 4
    invoke-static {v0, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "packageName"

    invoke-static {v5, v6}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 5
    const-string v6, "com.android.server.wm.AppCompatConfiguration"

    invoke-static {v6, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getLetterboxHorizontalPositionMultiplier"

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    .line 6
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v6

    new-instance v7, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;

    invoke-direct {v7, v3, v5}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda11;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V

    invoke-interface {v6, v7}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {p0, v2}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v5, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v4, "updateResolvedBoundsPosition"

    invoke-static {v2, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "com.android.server.wm.AppCompatAspectRatioOverrides"

    const-string v4, "shouldUseSplitScreenAspectRatio"

    invoke-static {v2, p1, v0, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "READY position hook, deoptimized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v2}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    move v2, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p1, 0x1

    goto :goto_1

    :catchall_2
    move-exception p0

    :goto_0
    move p1, v2

    .line 40
    :goto_1
    if-nez p1, :cond_0

    const-string p1, "position hook NOT installed, native position kept"

    goto :goto_2

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position hooks installed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/2, deoptimize list incomplete"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    :goto_2
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static i()Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 49
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentActivityThread"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSystemContext"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static i(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 13

    const-string v0, "com.android.server.wm.WindowManagerService"

    const-string v1, "DuoCompat"

    const-string v2, "com.android.server.wm.WindowState"

    .line 1
    :try_start_0
    new-instance v6, Ldev/duo/hookprobe/Q;

    const/4 v3, 0x1

    invoke-direct {v6, p1, v3}, Ldev/duo/hookprobe/Q;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 2
    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 3
    const-string v5, "mActivityRecord"

    invoke-static {v4, v5}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 4
    const-string v7, "com.android.server.wm.ActivityRecord"

    invoke-static {v7, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "packageName"

    invoke-static {v7, v8}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 5
    iget-object v8, v6, Ldev/duo/hookprobe/Q;->a:Ljava/lang/Class;

    const-string v9, "mSources"

    invoke-static {v8, v9}, Ldev/duo/hookprobe/n;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 6
    iget-object v8, v6, Ldev/duo/hookprobe/Q;->a:Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    .line 7
    const-string v8, "getCompatInsetsState"

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 8
    const-string v8, "com.android.server.wm.ConfigurationContainer"

    invoke-static {v8, v3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 9
    const-string v8, "getWindowingMode"

    invoke-virtual {v3, v8, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 10
    const-string v12, "getActivityType"

    invoke-virtual {v3, v12, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 11
    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v11

    move-object v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v3

    new-instance v3, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda4;

    invoke-direct/range {v3 .. v10}, Ldev/duo/hookprobe/n$$ExternalSyntheticLambda4;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ldev/duo/hookprobe/Q;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Field;)V

    invoke-interface {v11, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-string v4, "fillInsetsState"

    invoke-static {v3, p1, v2, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v4, "reportResized"

    invoke-static {v3, p1, v2, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "notifyInsetsControlChanged"

    invoke-static {v3, p1, v2, v4}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "addWindowInner"

    invoke-static {v3, p1, v0, v2}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "relayoutWindow"

    invoke-static {v3, p1, v0, v2}, Ldev/duo/hookprobe/n;->a(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "READY server top hook, deoptimized "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v3}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 48
    const-string p1, "server top hook NOT installed"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static j()V
    .locals 8

    const-string v0, "DuoCompat"

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    .line 1
    :try_start_0
    invoke-static {}, Ldev/duo/hookprobe/n;->i()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Ldev/duo/hookprobe/L;->d:Landroid/net/Uri;

    new-instance v6, Ldev/duo/hookprobe/n$a;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ldev/duo/hookprobe/n$a;-><init>(Landroid/os/Handler;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "READY app change observer attempt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eq v2, v1, :cond_0

    if-ne v2, v3, :cond_1

    .line 12
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "app change observer not registered, attempt "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    nop

    .line 13
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
