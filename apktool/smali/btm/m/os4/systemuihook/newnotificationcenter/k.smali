.class final Lbtm/m/os4/systemuihook/newnotificationcenter/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/os/Handler;

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Ljava/lang/Runnable;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-m8DWJbJG6z3AM_X-jdZwpuWwHA(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V
    .locals 0

    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUuygYe7w3VuFmjgTm6C-kDfZDQ(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bFX3x7lf-Evdk5REk-eOkN1wOOs(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V
    .locals 0

    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$ls4gXeCFjf9uQenE4LMJfnK_JfY(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V
    .locals 0

    invoke-direct {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->f()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->l:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda0;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda1;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->j:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda2;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/k;)V

    iput-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->k:Ljava/lang/Runnable;

    .line 18
    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a:Ljava/lang/Object;

    .line 19
    const-string p1, "shortcutMoveController"

    invoke-static {p2, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b:Ljava/lang/Object;

    .line 20
    const-string v0, "shortcutOccludedAnimController"

    invoke-static {p1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->c:Ljava/lang/Object;

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 23
    const-string v0, "com.miui.keyguard.shortcuts.manager.MiuiShortcutManager"

    invoke-static {v0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    .line 24
    const-string v0, "INSTANCE"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    .line 25
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "getMainHandler"

    invoke-static {p1, v0, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    iput-object p2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 27
    sget-object p2, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->l:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "startShortcutActivity"

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Class;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Hooker;)Ljava/util/List;

    .line 37
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    const-string p2, "startFullScreenAnim"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/b;->a(Ljava/lang/Class;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Lbtm/m/os4/systemuihook/newnotificationcenter/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    invoke-direct {v0, p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->c:Ljava/lang/Object;

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->g()V

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)V
    .locals 8

    .line 34
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-ne v0, p0, :cond_2

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 35
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    .line 36
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const-string v1, "removeWindowIfNeed"

    const-string v2, "resetOccludedMovedShortcut"

    const-string v3, "[IOSShade] shortcut window cleanup unavailable: "

    const-string v4, "setInAppOpening"

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    .line 40
    :try_start_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/d;->a()V

    .line 41
    :cond_1
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->b:Ljava/lang/Object;

    const-string v6, "reset"

    const-string v7, "ios notification shortcut finished"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v6}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :catchall_1
    move-exception p1

    .line 56
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IOSShade] shortcut reset unavailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 57
    :try_start_3
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->c:Ljava/lang/Object;

    const-string v6, "removeAnimShortcutView"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1, v6, v7}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 58
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IOSShade] shortcut layer removal unavailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 61
    :goto_0
    :try_start_5
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v4, v6}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 50
    :goto_1
    goto :goto_2

    .line 63
    :catchall_3
    move-exception p1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 52
    :goto_2
    nop

    .line 54
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    .line 55
    iput-boolean v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    goto :goto_4

    .line 65
    :catchall_4
    move-exception p1

    .line 66
    :try_start_6
    iget-object v6, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v2, v6}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_3
    nop

    .line 72
    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    .line 73
    iput-boolean v5, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    .line 74
    throw p1

    :cond_2
    :goto_4
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    .line 13
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 14
    iget-object v2, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a:Ljava/lang/Object;

    if-eq v2, p0, :cond_0

    goto/16 :goto_3

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v2, 0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string p0, "onFullscreenAnimationEnd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "onFullscreenAnimationStart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x7

    goto :goto_2

    :sswitch_2
    const-string p0, "onBackAnimationEnd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_2

    :sswitch_3
    const-string p0, "updateCanShowBiometricAuthentication"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x5

    goto :goto_2

    :sswitch_4
    const-string p0, "onDismissAnimationEnd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    goto :goto_2

    :sswitch_5
    const-string p0, "onTouchUp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x3

    goto :goto_2

    :sswitch_6
    const-string p0, "onMoveDistanceUpdate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x2

    goto :goto_2

    :sswitch_7
    const-string p0, "onOccludedAnimationStart"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move p0, v2

    goto :goto_2

    :sswitch_8
    const-string p0, "onOccludedAnimationEnd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move p0, v1

    goto :goto_2

    :goto_1
    const/4 p0, -0x1

    :goto_2
    packed-switch p0, :pswitch_data_0

    return v1

    .line 20
    :pswitch_0
    iget-boolean p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-nez p0, :cond_a

    .line 21
    iget-object p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return v2

    .line 23
    :pswitch_1
    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e()V

    return v2

    .line 33
    :pswitch_2
    iget-boolean p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-nez p0, :cond_b

    iget-object p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :pswitch_3
    return v2

    :cond_c
    :goto_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x698f1eff -> :sswitch_8
        -0x417b54f8 -> :sswitch_7
        -0x4a8a472 -> :sswitch_6
        0xc02175b -> :sswitch_5
        0x4c9df602 -> :sswitch_4
        0x668a8ecc -> :sswitch_3
        0x7149013d -> :sswitch_2
        0x76c934d8 -> :sswitch_1
        0x7aed9ed1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->g:Z

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-ne v0, p0, :cond_1

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->c:Ljava/lang/Object;

    const-string v2, "dismissRunnable"

    invoke-static {v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IOSShade] shortcut failure feedback unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->f:Z

    .line 4
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->d:Ljava/lang/Object;

    const-string v2, "startShortcutActivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IOSShade] shortcut launch failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->g:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 9
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    .line 10
    :cond_0
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->f:Z

    .line 11
    iput-boolean v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->g:Z

    .line 12
    sput-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    return-void
.end method

.method b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->a(Z)V

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->m:Lbtm/m/os4/systemuihook/newnotificationcenter/k;

    if-ne v0, p0, :cond_1

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->e:Landroid/os/Handler;

    iget-object v1, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/k;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
