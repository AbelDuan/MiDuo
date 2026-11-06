.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/reflect/Method;

.field private static final d:[Ljava/lang/reflect/Method;

.field private static final e:[I

.field private static final f:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z

.field private static k:Landroid/view/ViewGroup;

.field private static l:Landroid/view/View;

.field private static m:Landroid/view/ViewTreeObserver;

.field private static n:Z

.field private static final o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static synthetic $r8$lambda$JUxNzimWbtHzbpmdBvLPKAcy4xU()V
    .locals 0

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$NGVk5Hfw5rmMQHQYLqoQQFfKnoQ(ILio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(ILio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jGcRHhZPAsMXXdJA-vx1fS0LfdY(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "setPassWindowBlurEnabled"

    const-string v1, "disableMiBackgroundContainBelow"

    const-string v2, "setMiBackgroundBlurMode"

    const-string v3, "setMiBackgroundBlurType"

    const-string v4, "setMiBackgroundBlurRadius"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a:[Ljava/lang/String;

    .line 5
    const-string v0, "getPassWindowBlurEnabled"

    const-string v1, "getMiBackgroundContainBelow"

    const-string v2, "getMiBackgroundBlurMode"

    const-string v3, "getMiBackgroundBlurType"

    const-string v4, "getMiBackgroundBlurRadius"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->b:[Ljava/lang/String;

    .line 9
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/reflect/Method;

    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    .line 10
    new-array v0, v0, [Ljava/lang/reflect/Method;

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d:[Ljava/lang/reflect/Method;

    .line 15
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e:[I

    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->g:Ljava/util/WeakHashMap;

    .line 18
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->h:Ljava/util/WeakHashMap;

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    .line 25
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(ILio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    if-eq p0, v2, :cond_1

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v2, :cond_2

    .line 9
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p0, v2, :cond_3

    .line 10
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->g:Ljava/util/WeakHashMap;

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    sget-boolean v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-eqz v3, :cond_6

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p0, v2, :cond_6

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->h(Landroid/view/View;)[Ljava/lang/Object;

    move-result-object v2

    .line 16
    aput-object v1, v2, p0

    .line 17
    invoke-static {v0, p0, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Landroid/view/View;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 18
    :cond_6
    :goto_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/view/View;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x1

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 0
    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 34
    :pswitch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 35
    :pswitch_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_2
    nop

    .line 36
    const/4 p0, 0x2

    aget-object p0, p2, p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 p0, 0x50

    .line 40
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    nop

    .line 41
    return-object p0

    :pswitch_4
    nop

    .line 42
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 19
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 21
    sget-boolean v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/view/View;)V
    .locals 5

    .line 43
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->h(Landroid/view/View;)[Ljava/lang/Object;

    move-result-object v0

    .line 44
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 46
    :goto_0
    :try_start_0
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 49
    aget-object v3, v0, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 52
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    :cond_1
    aget-object v3, v0, v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-static {p0, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Landroid/view/View;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_4
    sget-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->n:Z

    if-nez v0, :cond_5

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->n:Z

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IOSShade] local material failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :cond_5
    sget-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 65
    :catchall_1
    move-exception p0

    .line 69
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 70
    throw p0
.end method

.method public static a(ZLandroid/view/ViewGroup;)V
    .locals 1

    .line 23
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-ne p0, v0, :cond_1

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d()V

    .line 26
    sput-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 27
    :goto_0
    sput-boolean p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-nez p0, :cond_3

    :goto_1
    return-void

    .line 29
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->m:Landroid/view/ViewTreeObserver;

    .line 30
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 31
    invoke-static {p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i(Landroid/view/View;)V

    return-void
.end method

.method private static a()Z
    .locals 5

    .line 32
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static b()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 4
    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    .line 5
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 4
    :goto_1
    nop

    .line 6
    const-class v3, Landroid/view/View;

    aget-object v1, v1, v0

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    aput-object v1, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d:[Ljava/lang/reflect/Method;

    const-class v4, Landroid/view/View;

    sget-object v5, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->b:[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    aput-object v4, v3, v0

    .line 11
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 16
    :goto_2
    :try_start_2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a()Lio/github/libxposed/api/XposedInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    sget-object v2, Lio/github/libxposed/api/XposedInterface$ExceptionMode;->PROTECTIVE:Lio/github/libxposed/api/XposedInterface$ExceptionMode;

    .line 17
    invoke-interface {v1, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v1

    new-instance v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda1;-><init>(I)V

    .line 18
    invoke-interface {v1, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 4
    :catchall_1
    move-exception v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[IOSShade] material API unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_1
    :try_start_3
    const-class v0, Landroid/view/View;

    const-string v1, "setMiViewBlurMode"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 44
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a()Lio/github/libxposed/api/XposedInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    sget-object v1, Lio/github/libxposed/api/XposedInterface$ExceptionMode;->PROTECTIVE:Lio/github/libxposed/api/XposedInterface$ExceptionMode;

    .line 45
    invoke-interface {v0, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n$$ExternalSyntheticLambda2;-><init>()V

    .line 46
    invoke-interface {v0, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IOSShade] row material refresh hook unavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private static b(Landroid/view/View;)Z
    .locals 2

    .line 55
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->l:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-ne p0, v0, :cond_1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static synthetic c()V
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static d()V
    .locals 11

    .line 2
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    .line 3
    const/4 v1, 0x0

    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->l:Landroid/view/View;

    .line 4
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->m:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->m:Landroid/view/ViewTreeObserver;

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5
    :cond_0
    sput-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->m:Landroid/view/ViewTreeObserver;

    .line 6
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_1
    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    if-nez v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    sget-object v6, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e:[I

    array-length v7, v6

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8

    .line 13
    sget-object v10, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    aget-object v10, v10, v9

    if-eqz v10, :cond_4

    aget-object v9, v4, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_3

    goto :goto_2

    .line 15
    :cond_3
    :try_start_1
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 21
    :cond_5
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 22
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 15
    :catchall_1
    move-exception v0

    .line 23
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 24
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 25
    throw v0
.end method

.method private static d(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.miui.systemui.widget.CircleAndTickAnimView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static e(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.systemui.shade.NotificationPanelView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 1

    .line 1
    sput-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->l:Landroid/view/View;

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static g(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "getMediaViewHolder"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "mediaBg"

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p0, Landroid/view/View;

    .line 6
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->h:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_2

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    :cond_2
    :goto_0
    return-void
.end method

.method private static h(Landroid/view/View;)[Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d:[Ljava/lang/reflect/Method;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ge v1, v3, :cond_3

    .line 7
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v1, v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    :try_start_0
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 14
    aget-object v1, v0, v5

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_2

    .line 15
    :cond_4
    aput-object v4, v0, v5

    .line 16
    :goto_2
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v5

    .line 17
    :cond_5
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static i(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->l:Landroid/view/View;

    if-ne p0, v0, :cond_0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j(Landroid/view/View;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui.statusbar.notification.mediacontrol.MiuiMediaHeaderView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->g(Landroid/view/View;)V

    .line 4
    :cond_1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->k(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(Landroid/view/View;)V

    .line 5
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static j(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->c:[Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    :try_start_0
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->d:[Ljava/lang/reflect/Method;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    .line 5
    :cond_0
    aget-object v4, v3, v1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v0

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 15
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 16
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 17
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->j(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static k(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->e(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".NotificationBackgroundView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    const-string v1, "com.miui.systemui.widget.CircleAndTickAnimView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->h:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
