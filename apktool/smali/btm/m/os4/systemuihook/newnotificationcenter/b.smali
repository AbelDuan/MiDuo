.class final Lbtm/m/os4/systemuihook/newnotificationcenter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$7WX3fJBkGt7pS-8tUXZEbMwaNLc(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FdTCc8O6I2jT-5N3yoW4heYcU54(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KnluLfcRRKgGSA2gyUOO2LFyyL4(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->f(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PqQ4DNZGoMt2LJT1_1izpDW2CTE(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S0xN31D59_oKwuzx1C6x3JXLnFs(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w2vQwFSYHFLvPPJYc3bfV3sQRL8(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 86
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 88
    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static varargs a(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 92
    array-length v4, p1

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 93
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    :try_start_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a()Lio/github/libxposed/api/XposedInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/github/libxposed/api/XposedInterface;->deoptimize(Ljava/lang/reflect/Executable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IOSShade] cannot deoptimize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Ljava/lang/ClassLoader;)V
    .locals 6

    .line 5
    const-string v0, "dispatchPropertiesUpdate"

    const-string v1, "onPropertiesUpdate"

    const-string v2, "startPanelVisibleAnimation"

    const-string v3, "startPanelExpandAnimation$default"

    :try_start_0
    const-string v4, "com.android.systemui.shade.MiuiNotificationPanelAnimControllerImpl"

    invoke-static {v4, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 7
    new-instance v5, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v3, v5}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 15
    new-instance v5, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v4, v2, v5}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 26
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IOSShade] panel animation controller unavailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 31
    :goto_0
    :try_start_1
    const-string v2, "com.android.systemui.shade.MiuiPanelAnimValueObjectImpl"

    invoke-static {v2, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 33
    const-string v3, "changeExpand"

    new-instance v4, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v3, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 41
    const-string v3, "changeVisible"

    new-instance v4, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v2, v3, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 49
    const-string v3, "scheduleUpdate"

    new-instance v4, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2, v3, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IOSShade] notification panel animator unavailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 60
    :goto_1
    :try_start_2
    const-string v2, "com.miui.systemui.notification.row.ExpandableViewBase"

    invoke-static {v2, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 62
    new-instance v3, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/b$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v2, v1, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 79
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 80
    const-string v1, "com.miui.systemui.widget.PropertiesFrameLayout"

    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 82
    const-string p0, "[IOSShade] notifications follow the hosted sheet; OEM panel transforms disabled"

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IOSShade] notification property hook unavailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "ambientState"

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isOnKeyguard"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    return v1
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 23
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "getInjector"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    const-string v2, "ambientState"

    invoke-static {v0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->L()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "panelVisible"

    .line 5
    invoke-static {v2, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    const-string v2, "getViewState"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    const-string v1, "mInjector"

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    const-string v1, "folmeStateMap"

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    instance-of v1, p0, Landroid/util/SparseArray;

    if-nez v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    check-cast p0, Landroid/util/SparseArray;

    const/16 v1, 0x2b0a

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    const-string v1, "alpha"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    const-string v1, "scaleX"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    const-string v1, "scaleY"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    const-string v1, "translationY"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p0, v1, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    const-string v1, "animator"

    invoke-static {v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    const-string v1, "slideTransX"

    invoke-static {v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 21
    :goto_0
    const-string v0, "translationX"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 5
    :catchall_0
    move-exception p0

    .line 21
    :goto_1
    return-void
.end method

.method private static synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 4
    invoke-interface {p0, v0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
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

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "view"

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->b(Ljava/lang/Object;)V

    :cond_0
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
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->b(Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/m;->f(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 7
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/m;->a(Landroid/view/View;)V

    .line 8
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_2
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/m;->a(Ljava/lang/Object;)V

    return-object v1

    .line 8
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/m;->a(Ljava/lang/Object;)V

    .line 14
    throw p0
.end method
