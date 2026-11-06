.class final Lbtm/m/os4/systemuihook/newnotificationcenter/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Ljava/lang/String;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b(Landroid/view/View;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static a()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    .line 9
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method static a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_3

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 4
    const/4 p0, 0x0

    sput-boolean p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    return-void

    :cond_1
    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    .line 5
    sget-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    const/4 p0, 0x1

    sput-boolean p0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a()V

    return-void
.end method

.method static a(Landroid/view/View;)V
    .locals 4

    .line 11
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->m(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;

    invoke-static {v3, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static a(Landroid/view/View;Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;)V
    .locals 3

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 16
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->l(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    iget-boolean v0, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "isRemoved"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    :cond_1
    :try_start_1
    iget-boolean v0, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "mDismissed"

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 24
    :cond_2
    :try_start_2
    invoke-virtual {p1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;->a(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Landroid/view/View;Ljava/lang/String;F)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b(Landroid/view/View;Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 2

    .line 10
    :try_start_0
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;

    invoke-direct {v1, p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;-><init>(Landroid/view/View;Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;)F
    .locals 1

    .line 3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method static b(Landroid/view/View;)V
    .locals 1

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Lbtm/m/os4/systemuihook/newnotificationcenter/h$a;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;F)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b(Landroid/view/View;Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSuper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static b(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static b()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    return v0
.end method

.method static c(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->m(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 4
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->d(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static d(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/m;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Z)V

    .line 4
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getInjector"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    const-string v2, "getBackgroundNormal"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->a(Landroid/view/View;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :cond_1
    :goto_0
    :try_start_1
    const-string v1, "getAttachedChildren"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 11
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/h;->d(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :cond_3
    :goto_2
    return-void
.end method
