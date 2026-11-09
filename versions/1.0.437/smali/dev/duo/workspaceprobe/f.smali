.class final Ldev/duo/workspaceprobe/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/f$c;,
        Ldev/duo/workspaceprobe/f$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DuoRotation"

.field private static final b:Ljava/lang/String; = "show_rotation_suggestions"

.field private static final c:Landroid/net/Uri;

.field private static final d:I = 0x10

.field private static final e:I = 0x2

.field private static final f:Landroid/os/Handler;

.field private static final g:Ljava/util/concurrent/ExecutorService;

.field private static h:Ljava/lang/ClassLoader; = null

.field private static i:Landroid/content/Context; = null

.field private static j:Ljava/lang/Object; = null

.field private static k:Ljava/lang/Object; = null

.field private static l:Z = false

.field private static m:I = 0x0

.field private static volatile n:I = 0x0

.field private static volatile o:Z = false

.field private static volatile p:Z = false

.field private static final q:I = 0x5dc

.field private static final r:I = 0x28


# direct methods
.method public static synthetic $r8$lambda$2GPGNVDO4sVQ1bCgIHIs5FcWLM0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8qPl-FOf22qqAbSIh7_tgG2ixE8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/f;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Dd4urzL2Crbp7kwxpz3DUzzXw9I(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IOLZNdTQ4BZZaJzSh8hgpXu1IdQ()V
    .locals 0

    invoke-static {}, Ldev/duo/workspaceprobe/f;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$JgPtIKO1dev316cp8MDFyDtB1OA(I)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_No03xPv3DQNjr6dBAOBa4VyhUM(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jTJqDqfuwN93mH1FadEZXtWZpfs(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nA1yaYEGRYEUFmynSN3y3Rfz49Y(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rEKDoiNiXWpjptMPiqztw6lJ_sY(IZ)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/f;->a(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$vBGcm1-FFnk6Hcyg5Hey7NkqzO8(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "content://dev.duo.hookprobe.config/rotationSuggest"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ldev/duo/workspaceprobe/f;->c:Landroid/net/Uri;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ldev/duo/workspaceprobe/f;->f:Landroid/os/Handler;

    .line 5
    new-instance v0, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ldev/duo/workspaceprobe/f;->g:Ljava/util/concurrent/ExecutorService;

    .line 13
    const/4 v0, -0x1

    sput v0, Ldev/duo/workspaceprobe/f;->n:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 43
    sget-object v2, Ldev/duo/workspaceprobe/f;->f:Landroid/os/Handler;

    new-instance v3, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, p0}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda9;-><init>(IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 109
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    array-length v5, p2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    new-instance p2, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "DuoRotationConfig"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
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

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic a(I)V
    .locals 0

    .line 45
    sput p0, Ldev/duo/workspaceprobe/f;->m:I

    return-void
.end method

.method private static synthetic a(IZ)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/f;->b(IZ)V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .line 46
    sget-object v0, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    sput-object p0, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Ldev/duo/workspaceprobe/f;->c:Landroid/net/Uri;

    new-instance v1, Ldev/duo/workspaceprobe/f$a;

    sget-object v2, Ldev/duo/workspaceprobe/f;->f:Landroid/os/Handler;

    invoke-direct {v1, v2}, Ldev/duo/workspaceprobe/f$a;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 52
    const-string v0, "DuoRotation"

    const-string v1, "Rotation suggestion observer unavailable"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_0
    const-string p0, "start"

    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/widget/ImageView;)V
    .locals 0

    .line 2
    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->b(Landroid/widget/ImageView;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 97
    new-instance v0, Ldev/duo/workspaceprobe/f$d;

    invoke-static {}, Ldev/duo/workspaceprobe/f;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const v1, -0xe3e3e2

    :goto_0
    invoke-direct {v0, v1, p1}, Ldev/duo/workspaceprobe/f$d;-><init>(IZ)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->b(Landroid/widget/ImageView;)V

    return-void
.end method

.method static a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    .locals 8

    const-string v0, "DuoRotation"

    .line 4
    sput-object p1, Ldev/duo/workspaceprobe/f;->h:Ljava/lang/ClassLoader;

    .line 6
    :try_start_0
    const-string v1, "com.android.systemui.statusbar.CommandQueue"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 7
    const-string v3, "onProposedRotationChanged"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v6, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 18
    const-string v3, "com.android.systemui.shared.rotation.FloatingRotationButtonPositionCalculator"

    invoke-static {v3, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 19
    const-string v6, "calculatePosition"

    filled-new-array {v4, v5, v5}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v6, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v3, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 27
    const-string v3, "disable"

    filled-new-array {v4, v4, v4, v5}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    new-instance v3, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 36
    const-string v1, "com.android.systemui.navigationbar.views.NavigationBar"

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 37
    const-string v1, "onRotationProposal"

    filled-new-array {v4, v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p0

    new-instance p1, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 38
    const-string p0, "Rotation suggestion hooks ready"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 39
    const-string p1, "Rotation suggestion hooks unavailable"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/f;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .locals 13

    .line 54
    const-string v0, "DuoRotation"

    sget-object v1, Ldev/duo/workspaceprobe/f;->j:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 55
    :cond_0
    sget-boolean v1, Ldev/duo/workspaceprobe/f;->l:Z

    const/4 v3, 0x0

    if-nez v1, :cond_4

    sget-object v1, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 57
    :cond_1
    :try_start_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget-object v4, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 58
    const-string v4, "com.android.systemui.navigationbar.views.NavigationBarView"

    sget-object v5, Ldev/duo/workspaceprobe/f;->h:Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    const-class v6, Landroid/util/AttributeSet;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    const-string v4, "com.android.systemui.rotation.impl.RotationPolicyWrapperImpl"

    sget-object v6, Ldev/duo/workspaceprobe/f;->h:Ljava/lang/ClassLoader;

    invoke-static {v4, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-class v6, Landroid/content/Context;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sget-object v6, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    const-string v6, "setRotationPolicyWrapper"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v6, v4}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v4, "updateRotationButton"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v4, "mRotationButtonController"

    invoke-static {v1, v4}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    const-string v4, "mRotationButton"

    invoke-static {v1, v4}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 66
    const-string v6, "mKeyButtonView"

    invoke-static {v4, v6}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 67
    invoke-static {v6}, Ldev/duo/workspaceprobe/f;->c(Landroid/widget/ImageView;)V

    .line 69
    const-string v6, "mUpdatesCallback"

    invoke-static {v4, v6, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v6, "mPositionCalculator"

    invoke-static {v4, v6}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "floatingRotationButtonPositionLeft"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7, v8}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v6, "mNavBarMode"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v6, v7}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v6, "mListenersRegistered"

    invoke-static {v1, v6, v8}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v6, "com.android.systemui.shared.system.TaskStackChangeListeners"

    sget-object v7, Ldev/duo/workspaceprobe/f;->h:Ljava/lang/ClassLoader;

    invoke-static {v6, v3, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 75
    const-string v7, "INSTANCE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 76
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v8, v6

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    .line 77
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "registerTaskStackListener"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "mTaskStackListener"

    invoke-static {v1, v11}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    :cond_3
    const-string v6, "android.view.WindowManagerGlobal"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getWindowManagerService"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 79
    const-string v6, "android.view.IRotationWatcher"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 80
    const-string v7, "android.view.IWindowManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "watchRotation"

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6, v9}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "mRotationWatcher"

    .line 81
    invoke-static {v1, v7}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v5, "mRotationWatcherRegistered"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v5, v6}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    sput-object v1, Ldev/duo/workspaceprobe/f;->j:Ljava/lang/Object;

    .line 84
    sput-object v4, Ldev/duo/workspaceprobe/f;->k:Ljava/lang/Object;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Native rotation button ready light="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mLightIconColor"

    invoke-static {v1, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dark="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mDarkIconColor"

    .line 86
    invoke-static {v1, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 77
    :catchall_0
    move-exception v1

    .line 87
    nop

    .line 91
    sput-boolean v2, Ldev/duo/workspaceprobe/f;->l:Z

    .line 92
    const-string v2, "Native rotation button unavailable"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return v3
.end method

.method private static a(II)Z
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p0, v0

    .line 99
    rem-int/lit8 p0, p0, 0x4

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 96
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget v0, Ldev/duo/workspaceprobe/f;->n:I

    if-gez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 4
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    sget-boolean v2, Ldev/duo/workspaceprobe/f;->o:Z

    goto :goto_0

    :cond_1
    sget-boolean v2, Ldev/duo/workspaceprobe/f;->p:Z

    .line 5
    :goto_0
    const/4 v3, 0x0

    aget-object v4, v1, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 6
    invoke-interface {p0, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b()V
    .locals 4

    .line 45
    :try_start_0
    sget-object v0, Ldev/duo/workspaceprobe/f;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string v1, "setRotateSuggestionButtonState"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 46
    const-string v1, "DuoRotation"

    const-string v2, "Rotation button hide failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static b(IZ)V
    .locals 9

    .line 47
    const-string v0, "mKeyButtonView"

    const-string v1, "DuoRotation"

    sget v2, Ldev/duo/workspaceprobe/f;->m:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_d

    invoke-static {}, Ldev/duo/workspaceprobe/f;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 49
    :cond_0
    :try_start_0
    sget-object v2, Ldev/duo/workspaceprobe/f;->j:Ljava/lang/Object;

    .line 50
    const-string v3, "mUiHandler"

    invoke-static {v2, v3}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 51
    sget-object v4, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_setup_complete"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "OEM_DISALLOW_ROTATION_IN_SUW"

    invoke-static {v4, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 53
    :cond_1
    sget-object v4, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    const-class v5, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 55
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x5dc

    const-string v8, "setRotateSuggestionButtonState"

    if-ge v5, v7, :cond_2

    .line 58
    :try_start_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v8, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 61
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 62
    sget-object v5, Ldev/duo/workspaceprobe/f;->k:Ljava/lang/Object;

    invoke-static {v5, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto/16 :goto_3

    .line 63
    :cond_3
    const-string v5, "mHomeRotationEnabled"

    invoke-static {v2, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "mIsRecentsAnimationRunning"

    invoke-static {v2, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 64
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v8, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    if-ne p0, v4, :cond_6

    .line 66
    const-string p1, "mRemoveRotationProposal"

    invoke-static {v2, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v8, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRotationProposal(rotation="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ") window="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string p1, "mLastRotationSuggestion"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, p1, v5}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-static {v4, p0}, Ldev/duo/workspaceprobe/f;->a(II)Z

    move-result p1

    if-eqz v4, :cond_8

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    goto :goto_0

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v4, 0x1

    .line 74
    :goto_1
    const-string v5, "mIconResId"

    if-eqz v4, :cond_a

    if-eqz p1, :cond_9

    const-string v4, "mIconCcwStart0ResId"

    goto :goto_2

    .line 75
    :cond_9
    const-string v4, "mIconCwStart0ResId"

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    .line 76
    const-string v4, "mIconCcwStart90ResId"

    goto :goto_2

    .line 77
    :cond_b
    const-string v4, "mIconCwStart90ResId"

    .line 74
    :goto_2
    nop

    .line 78
    invoke-static {v2, v4}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v5, v4}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    sget-object v4, Ldev/duo/workspaceprobe/f;->k:Ljava/lang/Object;

    const-string v5, "updateIcon"

    const-string v7, "mLightIconColor"

    invoke-static {v2, v7}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "mDarkIconColor"

    invoke-static {v2, v8}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v5, v7}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v4, Ldev/duo/workspaceprobe/f;->k:Ljava/lang/Object;

    invoke-static {v4, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/f;->a(Landroid/widget/ImageView;Z)V

    .line 82
    sput p0, Ldev/duo/workspaceprobe/f;->n:I

    .line 83
    const-string p1, "canShowRotationButton"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "showAndLogRotationSuggestion"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 85
    :cond_c
    const-string p1, "mPendingRotationSuggestion"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, p1, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string p1, "mCancelPendingRotationProposal"

    invoke-static {v2, p1}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 87
    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation proposal failed rotation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_3
    return-void
.end method

.method private static b(Landroid/widget/ImageView;)V
    .locals 8

    .line 91
    const-string v0, "DuoRotation"

    invoke-static {}, Ldev/duo/workspaceprobe/f;->c()Z

    move-result v1

    .line 93
    :try_start_0
    const-string v2, "mDiameter"

    invoke-static {p0, v2}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 95
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 96
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v1, :cond_0

    const v4, -0x47c5c5c2    # -4.4400098E-5f

    goto :goto_0

    :cond_0
    const v4, -0x38000001

    .line 97
    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 98
    sget-object v4, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v1, :cond_1

    const v1, 0x24ffffff

    goto :goto_1

    :cond_1
    const/high16 v1, 0xf000000

    .line 99
    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 101
    sget-object v1, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v1, v4

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setElevation(F)V

    .line 104
    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "createBackgroundBlurDrawable"

    invoke-virtual {v4, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setBlurRadius"

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "setCornerRadius"

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    aput-object v3, v4, v5

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 112
    const-string v2, "Rotation button blur unavailable; glass only"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catch_1
    move-exception p0

    .line 114
    const-string v1, "Rotation button diameter unreadable"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static synthetic b(Ljava/lang/String;)V
    .locals 8

    .line 7
    const-string v0, "show_rotation_suggestions"

    const-string v1, ")"

    const-string v2, "on"

    const-string v3, "DuoRotation"

    :try_start_0
    sget-object v4, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://dev.duo.hookprobe.config"

    .line 8
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "rotationSuggest"

    .line 9
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 12
    const-string v5, "portraitRight"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Ldev/duo/workspaceprobe/f;->o:Z

    .line 13
    const-string v5, "landscapeRight"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Ldev/duo/workspaceprobe/f;->p:Z

    :cond_0
    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_3

    .line 19
    :cond_1
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 21
    sget-object v5, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 22
    const/4 v6, -0x1

    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_2

    invoke-static {v5, v0, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 23
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rotation suggestion "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_3

    goto :goto_0

    .line 24
    :cond_3
    const-string v2, "off"

    .line 23
    :goto_0
    nop

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " portrait="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Ldev/duo/workspaceprobe/f;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "right"

    const-string v6, "left"

    if-eqz v2, :cond_4

    move-object v2, v5

    goto :goto_1

    .line 25
    :cond_4
    move-object v2, v6

    .line 24
    :goto_1
    nop

    .line 25
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " landscape="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    sget-boolean v2, Ldev/duo/workspaceprobe/f;->p:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 27
    :cond_5
    move-object v5, v6

    .line 26
    :goto_2
    nop

    .line 27
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_7

    .line 30
    sget-object v0, Ldev/duo/workspaceprobe/f;->f:Landroid/os/Handler;

    new-instance v2, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 31
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rotation suggestion switch unset ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), system setting kept"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotation suggestion sync failed ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
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
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 4
    sget-object v1, Ldev/duo/workspaceprobe/f;->f:Landroid/os/Handler;

    new-instance v2, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-object v0
.end method

.method private static c(Landroid/widget/ImageView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 6
    new-instance v0, Ldev/duo/workspaceprobe/f$c;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/f$c;-><init>()V

    const-string v1, "mOvalBgPaint"

    invoke-static {p0, v1, v0}, Ldev/duo/workspaceprobe/f;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    new-instance v0, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    new-instance v0, Ldev/duo/workspaceprobe/f$b;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/f$b;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .line 5
    sget-object v0, Ldev/duo/workspaceprobe/f;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ldev/duo/workspaceprobe/f$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c()Z
    .locals 2

    .line 18
    sget-object v0, Ldev/duo/workspaceprobe/f;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
