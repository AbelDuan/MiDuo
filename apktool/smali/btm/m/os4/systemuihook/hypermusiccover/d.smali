.class final Lbtm/m/os4/systemuihook/hypermusiccover/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[MCMiBlur] "

.field private static volatile b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 24
    const-string p0, "!"

    return-object p0

    .line 25
    :cond_1
    :goto_0
    const-string p0, "?"

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    .line 12
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    invoke-virtual {v1, p0, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 13
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 26
    :try_start_0
    const-class v0, Landroid/view/View;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 27
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized a()V
    .locals 5

    const-class v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->b:Z

    .line 3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "setMiBackgroundBlurMode"

    invoke-static {v3, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->c:Ljava/lang/reflect/Method;

    .line 4
    const-string v3, "setMiBackgroundBlurType"

    invoke-static {v3, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->d:Ljava/lang/reflect/Method;

    .line 5
    const-string v3, "setMiBackgroundBlurRadius"

    invoke-static {v3, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->e:Ljava/lang/reflect/Method;

    .line 6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setPassWindowBlurEnabled"

    invoke-static {v3, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->f:Ljava/lang/reflect/Method;

    .line 7
    const-string v2, "getMiBackgroundBlurMode"

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->g:Ljava/lang/reflect/Method;

    .line 8
    const-string v2, "getMiBackgroundBlurRadius"

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->h:Ljava/lang/reflect/Method;

    .line 9
    const-string v2, "getMiBackgroundBlurType"

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->i:Ljava/lang/reflect/Method;

    .line 10
    const-string v2, "getPassWindowBlurEnabled"

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/d;->j:Ljava/lang/reflect/Method;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MCMiBlur] blur api: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->c:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->d:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " radius="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->e:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->f:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readBack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->g:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->h:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->i:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/d;->j:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    move v1, v4

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
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

.method static a(Landroid/view/View;)V
    .locals 2

    .line 33
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a()V

    .line 34
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 35
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->c:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 2

    .line 28
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a()V

    .line 29
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 30
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->d:Ljava/lang/reflect/Method;

    invoke-static {v0, p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->e:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 32
    sget-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->f:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static a(Landroid/view/View;[I)V
    .locals 3

    .line 14
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a()V

    if-eqz p1, :cond_1

    .line 15
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->c:Ljava/lang/reflect/Method;

    aget p1, p1, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->f:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/reflect/Method;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private static b(Ljava/lang/reflect/Method;Landroid/view/View;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_1
    return v0

    :catchall_0
    move-exception p0

    :cond_2
    :goto_0
    return v0
.end method

.method static b(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->g:Ljava/lang/reflect/Method;

    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->h:Ljava/lang/reflect/Method;

    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->i:Ljava/lang/reflect/Method;

    .line 3
    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->j:Ljava/lang/reflect/Method;

    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a(Ljava/lang/reflect/Method;Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;)[I
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->a()V

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/d;->g:Ljava/lang/reflect/Method;

    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->b(Ljava/lang/reflect/Method;Landroid/view/View;)I

    move-result v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/d;->h:Ljava/lang/reflect/Method;

    invoke-static {v1, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/d;->b(Ljava/lang/reflect/Method;Landroid/view/View;)I

    move-result p0

    filled-new-array {v0, p0}, [I

    move-result-object p0

    return-object p0
.end method
