.class final Ldev/duo/hookprobe/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DuoWeChatDensity"

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field private static f:Ljava/util/function/IntSupplier;


# direct methods
.method public static synthetic $r8$lambda$LyDMbEciiDbH9KH8WhXBfmAZ6RY(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/U;->a(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MjWT6s5WPM0hjJQiyXgrWWPPJ4Q(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/U;->b(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Pn_ascXVcQGlMc_HSkksUUhxRXQ(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/U;->d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SOVdEGcEATWA91NFp5h7KQcAC4g(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/U;->c(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cZOK1ff7tlBQ0n5pphPe90GRqts(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/U;->d(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h8qbq_Lxp9VewSAtHTfpGfVSDNw(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$no-C_5eLCy8frDjdL91gjANpsZ8(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/U;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nwFvbI6g35sMUd1VNG9r0ToxjLc(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/U;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/U;->b:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/U;->c:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/U;->d:Ljava/util/Set;

    .line 5
    const/16 v0, 0x64

    sput v0, Ldev/duo/hookprobe/U;->e:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    .line 85
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    mul-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static a(II)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    sget-object v1, Ldev/duo/hookprobe/U;->b:Ljava/util/Map;

    monitor-enter v1

    .line 87
    :try_start_0
    sget v2, Ldev/duo/hookprobe/U;->e:I

    if-eq p1, v2, :cond_1

    .line 88
    sget-object v3, Ldev/duo/hookprobe/U;->c:Ljava/util/Set;

    invoke-static {v2}, Ldev/duo/hookprobe/U;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sput p1, Ldev/duo/hookprobe/U;->e:I

    .line 91
    :cond_1
    invoke-static {p1}, Ldev/duo/hookprobe/U;->a(I)I

    move-result v2

    .line 92
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/16 v4, 0x64

    if-lt p1, v4, :cond_5

    .line 94
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-ne p0, p1, :cond_2

    monitor-exit v1

    return v0

    :cond_2
    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v1

    return p0

    .line 96
    :cond_3
    sget-object v2, Ldev/duo/hookprobe/U;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ldev/duo/hookprobe/U;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    move v0, p1

    .line 97
    :cond_4
    monitor-exit v1

    return v0

    :cond_5
    if-ne p0, v2, :cond_6

    .line 99
    monitor-exit v1

    return v0

    .line 100
    :cond_6
    sget-object v4, Ldev/duo/hookprobe/U;->c:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Ldev/duo/hookprobe/U;->d:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    monitor-exit v1

    return v2

    :cond_7
    if-nez v3, :cond_8

    move v2, p0

    goto :goto_0

    .line 101
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 102
    :goto_0
    sget-object v3, Ldev/duo/hookprobe/U;->d:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p1, v3

    .line 103
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-ne p1, p0, :cond_9

    .line 104
    monitor-exit v1

    return v0

    .line 105
    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    monitor-exit v1

    return p1

    .line 89
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2

    .line 108
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, p1}, Ldev/duo/hookprobe/U;->a(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-float v0, p1

    .line 110
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 111
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 112
    iput p1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 113
    iget p1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz p1, :cond_1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 114
    :cond_1
    iget p1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz p1, :cond_2

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 115
    :cond_2
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz p0, :cond_3

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_3
    return-object v1
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)V

    .line 84
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 72
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 73
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    invoke-static {v0, p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_0

    .line 74
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v1, :cond_2

    .line 77
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 78
    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 79
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0, v1}, Ldev/duo/hookprobe/U;->a(Landroid/util/DisplayMetrics;I)V

    :cond_1
    move-object v1, v0

    :cond_2
    nop

    .line 82
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 7

    .line 120
    sget-object v0, Ldev/duo/hookprobe/U;->f:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    .line 121
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 123
    :goto_0
    instance-of v5, p0, Landroid/content/ContextWrapper;

    if-eqz v5, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    goto :goto_1

    :cond_1
    nop

    .line 125
    :goto_1
    filled-new-array {v1, v2, v3, v4}, [Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_8

    .line 127
    aget-object v3, p0, v2

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    move v4, v1

    move v5, v4

    :goto_3
    if-ge v4, v2, :cond_4

    .line 130
    aget-object v6, p0, v4

    if-ne v6, v3, :cond_3

    const/4 v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v1

    :goto_4
    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_5

    .line 132
    :cond_5
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 133
    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v5, v0}, Ldev/duo/hookprobe/U;->a(II)I

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    invoke-static {v4, v5}, Ldev/duo/hookprobe/U;->a(Landroid/util/DisplayMetrics;I)V

    .line 135
    :cond_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 136
    iget v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v4, v0}, Ldev/duo/hookprobe/U;->a(II)I

    move-result v4

    if-eqz v4, :cond_7

    .line 137
    iput v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private static a(Landroid/util/DisplayMetrics;I)V
    .locals 2

    int-to-float v0, p1

    .line 116
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 117
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    iput v1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 118
    iput p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 119
    iget p1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    iput p1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return-void
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Ljava/util/function/IntSupplier;)V
    .locals 8

    const-string v0, "onConfigurationChanged"

    const-string v1, "onCreate"

    const-string v2, "DuoWeChatDensity"

    .line 1
    :try_start_0
    sput-object p2, Ldev/duo/hookprobe/U;->f:Ljava/util/function/IntSupplier;

    .line 2
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "updateConfiguration"

    const-class v5, Landroid/content/res/Configuration;

    const-class v6, Landroid/util/DisplayMetrics;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 3
    const-string v4, "android.app.ContextImpl"

    const/4 v5, 0x0

    invoke-static {v4, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string v4, "createConfigurationContext"

    const-class v5, Landroid/content/res/Configuration;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 4
    const-class v4, Landroid/content/res/Configuration;

    const-string v5, "updateFrom"

    const-class v6, Landroid/content/res/Configuration;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 5
    const-class v5, Landroid/util/DisplayMetrics;

    const-string v6, "setTo"

    const-class v7, Landroid/util/DisplayMetrics;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 6
    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v6, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntSupplier;)V

    invoke-interface {v3, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 20
    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v3, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/IntSupplier;)V

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 25
    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v3, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/IntSupplier;)V

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 40
    invoke-virtual {p0, v5}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v3, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/IntSupplier;)V

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 49
    const-class p1, Landroid/app/Activity;

    const-class p2, Landroid/os/Bundle;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance p2, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p1, p2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 53
    const-class p1, Landroid/app/Activity;

    const-class p2, Landroid/content/res/Configuration;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance p2, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, p2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 58
    const-class p1, Landroid/app/Application;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance p2, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda6;

    invoke-direct {p2}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p1, p2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 63
    const-class p1, Landroid/app/Application;

    const-class p2, Landroid/content/res/Configuration;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p0

    new-instance p1, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Ldev/duo/hookprobe/U$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 68
    const-string p0, "READY app-initiated density scale (updateConfiguration, createConfigurationContext, updateFrom, setTo, lifecycle)"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 70
    const-string p1, "WeChat density NOT installed"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic b(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 2
    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    invoke-static {v0, p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic c(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 3
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 4
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    invoke-static {v2, p0}, Ldev/duo/hookprobe/U;->a(II)I

    move-result p0

    if-eqz p0, :cond_3

    int-to-float v2, p0

    .line 7
    iget v3, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 8
    iput p0, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 9
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz p0, :cond_1

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 10
    :cond_1
    iget p0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz p0, :cond_2

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 11
    :cond_2
    iget p0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz p0, :cond_3

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static synthetic d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Ldev/duo/hookprobe/U;->a(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic d(Ljava/util/function/IntSupplier;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/DisplayMetrics;

    .line 3
    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-interface {p0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p0

    invoke-static {v1, p0}, Ldev/duo/hookprobe/U;->a(II)I

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p1, p0}, Ldev/duo/hookprobe/U;->a(Landroid/util/DisplayMetrics;I)V

    :cond_0
    return-object v0
.end method
