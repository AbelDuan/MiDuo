.class public final Lbtm/m/os4/systemuihook/hypermusiccover/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.miui.systemui.util.FloatFlowProperty"

.field private static final b:Ljava/lang/String; = "com.miui.systemui.shade.blur.ShadeBlendBlurController$BlurProvider"

.field private static final c:Ljava/lang/String; = "com.android.systemui.shade.NotificationPanelExpansionAnimator"

.field private static final d:Ljava/lang/String; = "com.android.systemui.shade.NotificationPanelViewController"

.field private static volatile e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-NsirLPNaw4ibZoGPMxrtYmdLBE(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5Gy1Vxr_LgcpaPrAiUFvcxnaHxc(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->f(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5O3SexhfcGEGbgAWw4YtRRjOjPM(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6APohwDA94KX0n6sywFoETQHyLI(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TX5SnNR9vrJsk0WY-Rdkhp_g_JE(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VTIfwSi8VZFM3rh-J9IfB40e4hs(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/b;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 86
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Lio/github/libxposed/api/XposedInterface;)V

    .line 2
    new-instance p0, Lbtm/m/os4/systemuihook/hypermusiccover/a;

    invoke-direct {p0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/a;-><init>(Landroid/content/SharedPreferences;)V

    .line 3
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Lbtm/m/os4/systemuihook/hypermusiccover/a;)V

    .line 5
    :try_start_0
    const-string p2, "android.app.ActivityThread"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "currentApplication"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    instance-of v0, p2, Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iOS shade has no application context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/content/SharedPreferences;)V

    .line 12
    :try_start_1
    const-string p2, "com.android.systemui.shade.NotificationShadeWindowView"

    invoke-static {p2, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 13
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iOS shade window hook failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 22
    :goto_1
    :try_start_2
    const-string p2, "com.android.systemui.shade.NotificationPanelExpansionAnimator"

    invoke-static {p2, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lbtm/m/os4/systemuihook/hypermusiccover/b;->e:Ljava/lang/Class;

    .line 23
    const-string p2, "com.miui.systemui.util.FloatFlowProperty"

    invoke-static {p2, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 24
    const-string v0, "setValue"

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iOS shade expansion hook failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 37
    :goto_2
    :try_start_3
    invoke-static {p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/d;->a(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    .line 39
    :catchall_3
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iOS notification hooks failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 42
    :goto_3
    :try_start_4
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/content/SharedPreferences;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    .line 44
    :catchall_4
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iOS clock glass hooks failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 47
    :goto_4
    :try_start_5
    const-string p0, "com.miui.systemui.shade.blur.ShadeBlendBlurController$BlurProvider"

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 48
    new-instance p2, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 53
    const-string p2, "setBlurRatio"

    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, p2, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "iOS shade blur hook failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 68
    :goto_5
    :try_start_6
    const-string p0, "com.android.systemui.shade.NotificationPanelViewController"

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 69
    new-instance p2, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 74
    const-string p0, "com.android.systemui.shade.NotificationPanelViewController$TouchHandler"

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 75
    const-string p1, "onTouchEvent"

    new-instance p2, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lbtm/m/os4/systemuihook/hypermusiccover/b$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {p0, p1, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p0

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "iOS shade touch hook failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/b;->e:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 5
    :goto_0
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->k(F)V

    :cond_1
    return-object v0
.end method

.method private static synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/e;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/e;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->N()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6
    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic f(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-object v0
.end method
