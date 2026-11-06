.class public final Ldev/duo/hookprobe/MiDuo;
.super Lio/github/libxposed/api/XposedModule;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ldev/duo/hookprobe/G;

.field private b:Ldev/duo/workspaceprobe/b;

.field private c:Ldev/duo/workspaceprobe/g;

.field private d:Ldev/duo/icons/c;

.field private e:Z

.field private f:Z

.field private g:Ldev/duo/hookprobe/s;


# direct methods
.method public static synthetic $r8$lambda$5iYefmQh7udj6i3TPMKD_L8jZ2s()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/MiDuo;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$DtMO8giwM7TSGzsVh9FVvuC1S0I()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/MiDuo;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$PsdMqAMk1C692OobLtYDdKJWqtM()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/MiDuo;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$_-fyxmV1sq8e00SlKuN7Q1B1w8g()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/MiDuo;->f()V

    return-void
.end method

.method public static synthetic $r8$lambda$qYtZHlRkdWP-95R8DLseaFZSLEc()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/MiDuo;->b()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    const-string v2, "com.miui.personalassistant"

    const-string v3, "com.miui.home"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldev/duo/hookprobe/MiDuo;->h:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/github/libxposed/api/XposedModule;-><init>()V

    .line 4
    new-instance v0, Ldev/duo/hookprobe/G;

    invoke-direct {v0}, Ldev/duo/hookprobe/G;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MiDuo;->a:Ldev/duo/hookprobe/G;

    return-void
.end method

.method private a()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "duo_top"

    invoke-virtual {p0, v1}, Lio/github/libxposed/api/XposedModule;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "_global/foldAnimation"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 3
    const-string v2, "MiDuoFold"

    const-string v3, "\u5f00\u5173\u8bfb\u53d6\u5931\u8d25\uff0c\u672c\u8fdb\u7a0b\u4e0d\u52a0\u8f7d\u52a8\u753b"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static synthetic b()V
    .locals 0

    return-void
.end method

.method private static synthetic c()V
    .locals 0

    return-void
.end method

.method private static synthetic d()V
    .locals 0

    return-void
.end method

.method private static synthetic e()V
    .locals 0

    return-void
.end method

.method private static synthetic f()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V
    .locals 2

    .line 1
    const-string v0, "com.lsposed.miduo"

    sput-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->modulePackage:Ljava/lang/String;

    .line 2
    const-string v0, "0.403-fix1-1-ef7dfe872f21"

    sput-object v0, Ldev/duo/taskcore/WorkspaceProtocol;->buildId:Ljava/lang/String;

    .line 3
    const-string v0, "DuoWorkbench"

    const-string v1, "package=1.0.415-1-05e92cb34b03 wmProtocol=0.403-fix1-1-ef7dfe872f21"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.thememanager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ldev/duo/icons/c;

    invoke-direct {v0}, Ldev/duo/icons/c;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MiDuo;->d:Ldev/duo/icons/c;

    .line 6
    new-instance v1, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/github/libxposed/api/XposedModule;->attachFramework(Lio/github/libxposed/api/XposedInterface;Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->d:Ldev/duo/icons/c;

    invoke-virtual {v0, p1}, Ldev/duo/icons/c;->onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V

    return-void

    .line 10
    :cond_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/duo/hookprobe/MiDuo;->e:Z

    .line 11
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.personalassistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Ldev/duo/hookprobe/MiDuo;->f:Z

    .line 12
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->a:Ldev/duo/hookprobe/G;

    new-instance v1, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/github/libxposed/api/XposedModule;->attachFramework(Lio/github/libxposed/api/XposedInterface;Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->a:Ldev/duo/hookprobe/G;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/G;->onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V

    .line 14
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->isSystemServer()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ldev/duo/hookprobe/MiDuo;->h:Ljava/util/Set;

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Ldev/duo/workspaceprobe/b;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/b;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MiDuo;->b:Ldev/duo/workspaceprobe/b;

    .line 16
    new-instance v1, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/github/libxposed/api/XposedModule;->attachFramework(Lio/github/libxposed/api/XposedInterface;Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->b:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/b;->onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V

    return-void

    .line 18
    :cond_1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    new-instance v0, Ldev/duo/workspaceprobe/g;

    invoke-direct {v0}, Ldev/duo/workspaceprobe/g;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MiDuo;->c:Ldev/duo/workspaceprobe/g;

    .line 21
    new-instance v1, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/github/libxposed/api/XposedModule;->attachFramework(Lio/github/libxposed/api/XposedInterface;Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->c:Ldev/duo/workspaceprobe/g;

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/g;->onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V

    :cond_2
    return-void
.end method

.method public onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->d:Ldev/duo/icons/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ldev/duo/icons/c;->onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->a:Ldev/duo/hookprobe/G;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/G;->onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V

    .line 6
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->b:Ldev/duo/workspaceprobe/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ldev/duo/workspaceprobe/b;->onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Ldev/duo/hookprobe/MiDuo;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ldev/duo/hookprobe/MiDuo;->f:Z

    if-eqz v0, :cond_4

    :cond_2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->isFirstPackage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-direct {p0}, Ldev/duo/hookprobe/MiDuo;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u5408\u5165\u53e3 package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiDuoFold"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lio/github/libxposed/api/XposedModule;->getModuleApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Ldev/duo/hookprobe/t;->b(Ljava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Ldev/duo/hookprobe/MiDuo;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/hookprobe/t;->e(Ldev/duo/workspaceprobe/b;)V

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/duo/hookprobe/q;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    const-string v0, "\u5c31\u7eea\u89c2\u5bdf\u542f\u52a8\u5931\u8d25"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onSystemServerStarting(Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->a:Ldev/duo/hookprobe/G;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/G;->onSystemServerStarting(Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;)V

    .line 4
    :try_start_0
    new-instance v0, Ldev/duo/taskcore/WorkspaceWm;

    invoke-direct {v0}, Ldev/duo/taskcore/WorkspaceWm;-><init>()V

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ldev/duo/taskcore/WorkspaceWm;->install(Lio/github/libxposed/api/XposedInterface;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    const-string v1, "DuoWorkbench"

    const-string v2, "system_server \u5de5\u4f5c\u53f0\u534f\u4f5c\u672a\u5b89\u88c5 1.0.415-1-05e92cb34b03"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :goto_0
    invoke-direct {p0}, Ldev/duo/hookprobe/MiDuo;->a()Z

    move-result v0

    .line 10
    :try_start_1
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "set"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 11
    const-string v2, "247"

    goto :goto_1

    .line 12
    :cond_0
    const-string v2, "0"

    .line 11
    :goto_1
    nop

    .line 12
    const-string v3, "debug.duo.foldanim"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 11
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "MiDuoFold"

    const-string v2, "\u539f\u751f\u52a8\u753b\u8bb8\u53ef\u8bbe\u7f6e\u5931\u8d25\uff0c\u672c\u6b21\u542f\u52a8\u4e0d\u542f\u7528\u5f00\u5408\u52a8\u753b"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Ldev/duo/hookprobe/s;

    invoke-direct {v0}, Ldev/duo/hookprobe/s;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/MiDuo;->g:Ldev/duo/hookprobe/s;

    .line 20
    new-instance v1, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ldev/duo/hookprobe/MiDuo$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, v1}, Lio/github/libxposed/api/XposedModule;->attachFramework(Lio/github/libxposed/api/XposedInterface;Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Ldev/duo/hookprobe/MiDuo;->g:Ldev/duo/hookprobe/s;

    invoke-virtual {v0, p1}, Ldev/duo/hookprobe/s;->onSystemServerStarting(Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;)V

    :cond_1
    return-void
.end method
