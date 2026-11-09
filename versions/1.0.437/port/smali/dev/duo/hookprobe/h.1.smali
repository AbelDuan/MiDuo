.class final Ldev/duo/hookprobe/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "DuoAwemeFit"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Ljava/util/function/BooleanSupplier;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private f:Ljava/lang/reflect/Method;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method public static synthetic $r8$lambda$2lv_RNyM7Sddb8W55nv87eqazFU(Ldev/duo/hookprobe/h;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/h;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$5voNGAeQAN4PtAhnsmZpg-d-uqk(Ldev/duo/hookprobe/h;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/h;->a(Ldev/duo/hookprobe/h;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W9qEa76ZN7clppnZZoUZlqD3zh0(Ldev/duo/hookprobe/h;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;Ljava/util/function/BooleanSupplier;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/h;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/h;->d:Ljava/util/Set;

    .line 14
    iput-object p1, p0, Ldev/duo/hookprobe/h;->a:Landroid/content/SharedPreferences;

    .line 15
    iput-object p2, p0, Ldev/duo/hookprobe/h;->b:Ljava/util/function/BooleanSupplier;

    .line 16
    new-instance p1, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/h;)V

    iput-object p1, p0, Ldev/duo/hookprobe/h;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private static synthetic a(Ldev/duo/hookprobe/h;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Ldev/duo/hookprobe/h;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 40
    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/SurfaceView;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 41
    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    move-object v4, p0

    :try_start_1
    invoke-direct/range {v4 .. v9}, Ldev/duo/hookprobe/h;->a(Landroid/view/SurfaceView;IIII)[Ljava/lang/Object;

    move-result-object v1

    .line 44
    iput v0, v4, Ldev/duo/hookprobe/h;->j:I
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v4, p0

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v4, p0

    :goto_0
    move-object p0, v0

    .line 48
    iget v0, v4, Ldev/duo/hookprobe/h;->j:I

    add-int/2addr v0, v3

    iput v0, v4, Ldev/duo/hookprobe/h;->j:I

    const-string v5, "DuoAwemeFit"

    if-lt v0, v2, :cond_0

    .line 50
    iput-boolean v3, v4, Ldev/duo/hookprobe/h;->g:Z

    .line 51
    const-string v0, "disabled after 3 layout inspection failures"

    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_1

    .line 53
    const-string v0, "layout inspection failed, will retry"

    invoke-static {v5, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 57
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private synthetic a()V
    .locals 3

    .line 5
    iget-object v0, p0, Ldev/duo/hookprobe/h;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 6
    invoke-virtual {v1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    const-string p1, "com.ss.android.ugc.aweme/outerVideoFit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "com.ss.android.ugc.aweme/innerVideoFit"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    const-string p1, "_global/master"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    const-string p1, "com.ss.android.ugc.aweme"

    invoke-static {p1}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/duo/hookprobe/h;->c:Landroid/os/Handler;

    new-instance p2, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/h;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Landroid/content/SharedPreferences;Ljava/util/function/BooleanSupplier;)V
    .locals 4

    const-string p1, "DuoAwemeFit"

    .line 7
    new-instance v0, Ldev/duo/hookprobe/h;

    invoke-direct {v0, p2, p3}, Ldev/duo/hookprobe/h;-><init>(Landroid/content/SharedPreferences;Ljava/util/function/BooleanSupplier;)V

    .line 10
    :try_start_0
    const-string p3, "android.os.SystemProperties"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-string v1, "getBoolean"

    const-class v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, v0, Ldev/duo/hookprobe/h;->f:Ljava/lang/reflect/Method;

    .line 11
    const-class p3, Landroid/view/SurfaceView;

    const-string v1, "setFrame"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p0

    new-instance p3, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda1;

    invoke-direct {p3, v0}, Ldev/duo/hookprobe/h$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/h;)V

    invoke-interface {p0, p3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 33
    iget-object p0, v0, Ldev/duo/hookprobe/h;->e:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 34
    const-string p0, "READY SurfaceView layout; short-video containers required"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 36
    const/4 p2, 0x1

    iput-boolean p2, v0, Ldev/duo/hookprobe/h;->g:Z

    .line 37
    const-string p2, "not installed: required layout feature unavailable"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 109
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v0
.end method

.method static a(IIIIIIZ)[I
    .locals 9

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    const/4 v2, 0x0

    if-lez p0, :cond_5

    if-le p1, p0, :cond_5

    if-lez v0, :cond_5

    if-le v1, v0, :cond_5

    int-to-long v3, p2

    int-to-long v5, p4

    add-long/2addr v3, v5

    int-to-long v5, p0

    sub-long/2addr v3, v5

    .line 110
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    int-to-long v3, p3

    int-to-long v7, p5

    add-long/2addr v3, v7

    int-to-long v7, p1

    sub-long/2addr v3, v7

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    if-eqz p6, :cond_3

    if-nez p2, :cond_2

    if-ne p4, p0, :cond_2

    if-gez p3, :cond_2

    if-gt p5, p1, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p2, v0

    int-to-float p3, p1

    mul-float/2addr p2, p3

    int-to-float p3, v1

    div-float/2addr p2, p3

    .line 114
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p0, p2

    .line 115
    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    .line 116
    filled-new-array {p0, v3, p2, p1}, [I

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    if-nez p3, :cond_5

    if-ne p5, p1, :cond_5

    if-lez p2, :cond_5

    if-lt p4, p0, :cond_4

    goto :goto_1

    :cond_4
    int-to-float p2, v1

    int-to-float p3, p0

    mul-float/2addr p2, p3

    int-to-float p3, v0

    div-float/2addr p2, p3

    .line 119
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p1, p2

    .line 120
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    .line 121
    filled-new-array {v3, p1, p0, p2}, [I

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v2
.end method

.method private a(Landroid/view/SurfaceView;IIII)[Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "com.ss.android.ugc.aweme.feed.widget.VideoPinchViewContainer"

    invoke-static {v1, v2}, Ldev/duo/hookprobe/h;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "com.ss.android.ugc.aweme.ad.feed.VideoViewHolderRootView"

    invoke-static {v3, v4}, Ldev/duo/hookprobe/h;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    .line 61
    :cond_1
    iget-object v3, p0, Ldev/duo/hookprobe/h;->d:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v3, p0, Ldev/duo/hookprobe/h;->a:Landroid/content/SharedPreferences;

    const-string v5, "com.ss.android.ugc.aweme"

    invoke-static {v5}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    const-string v1, "skip:duo"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 64
    :cond_2
    iget-object v3, p0, Ldev/duo/hookprobe/h;->a:Landroid/content/SharedPreferences;

    invoke-static {v3}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Ldev/duo/hookprobe/h;->b:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_5

    .line 66
    :cond_3
    iget-object v3, p0, Ldev/duo/hookprobe/h;->f:Ljava/lang/reflect/Method;

    const-string v4, "debug.duo.awemefit"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 67
    const-string v1, "skip:property"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-nez v2, :cond_5

    .line 70
    const-string v1, "skip:display"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_6

    .line 72
    const-string v1, "skip:landscape"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 73
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_7

    goto/16 :goto_4

    .line 75
    :cond_7
    invoke-virtual {v2}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_e

    .line 77
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_8

    goto/16 :goto_3

    .line 79
    :cond_8
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getScaleX()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getScaleY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    .line 80
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getTranslationX()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_d

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_d

    .line 81
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    goto/16 :goto_2

    .line 83
    :cond_9
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2}, Ldev/duo/hookprobe/Q;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    .line 84
    const-string v1, "skip:panel"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_a
    iget-object v3, p0, Ldev/duo/hookprobe/h;->a:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ldev/duo/hookprobe/P;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v3 .. v9}, Ldev/duo/hookprobe/h;->a(IIIIIIZ)[I

    move-result-object v1

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v9, :cond_b

    const-string v3, " FIT"

    goto :goto_0

    :cond_b
    const-string v3, " FILL"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_c

    const-string v3, " native"

    goto :goto_1

    :cond_c
    const-string v3, " adjusted"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v1

    move-object v1, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 88
    :cond_d
    :goto_2
    const-string v1, "skip:transform"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 89
    :cond_e
    :goto_3
    const-string v1, "skip:physical"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_f
    :goto_4
    const-string v1, "skip:container"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 91
    :cond_10
    :goto_5
    const-string v1, "skip:master"

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Ldev/duo/hookprobe/h;->a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/view/SurfaceView;IIII[I)[Ljava/lang/Object;
    .locals 3

    .line 92
    iget-object v0, p0, Ldev/duo/hookprobe/h;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Ldev/duo/hookprobe/h;->i:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 93
    iput-object p1, p0, Ldev/duo/hookprobe/h;->h:Ljava/lang/String;

    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Ldev/duo/hookprobe/h;->i:I

    .line 95
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " root="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " container="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " input=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] output="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p7, :cond_0

    .line 100
    const-string p2, "native"

    goto :goto_0

    :cond_0
    invoke-static {p7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    const-string p2, "DuoAwemeFit"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p7, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_2
    const/4 p1, 0x0

    aget p1, p7, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aget p2, p7, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aget p3, p7, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x3

    aget p4, p7, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
