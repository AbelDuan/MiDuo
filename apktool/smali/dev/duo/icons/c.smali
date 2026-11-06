.class public final Ldev/duo/icons/c;
.super Lio/github/libxposed/api/XposedModule;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$31xMZIgMfT4MaIUqjJySaYstQI4(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/icons/c;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/libxposed/api/XposedModule;-><init>()V

    return-void
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.thememanager"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ldev/duo/icons/b;->a(Landroid/app/Application;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/icons/c;->a:Ljava/lang/String;

    return-void
.end method

.method public onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->isFirstPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/icons/c;->a:Ljava/lang/String;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-class p1, Landroid/app/Application;

    const-string v0, "attach"

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v0, Ldev/duo/icons/c$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ldev/duo/icons/c$$ExternalSyntheticLambda0;-><init>()V

    .line 6
    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    const-string v0, "DuoIcons"

    const-string v1, "\u56fe\u6807\u6865\u672a\u542f\u52a8"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
