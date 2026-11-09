.class public final Ldev/duo/hookprobe/G;
.super Lio/github/libxposed/api/XposedModule;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "DuoHookProbe"

.field private static final j:Ljava/lang/String; = "com.android.systemui"

.field private static volatile k:Ljava/lang/reflect/Method;

.field private static volatile l:Z

.field private static final m:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static volatile p:Ljava/lang/Object;

.field private static volatile q:Landroid/view/View;

.field private static volatile r:Z

.field private static final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Z

.field private static u:I

.field private static final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private volatile c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/content/SharedPreferences;

.field private volatile f:I

.field private volatile g:I

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1uqZpAp7JoBo2fE3jj-ctvFN_Ho(Ldev/duo/hookprobe/G;Ldev/duo/hookprobe/Q;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/G;->a(Ldev/duo/hookprobe/Q;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A7i1CDtYGDeh2gYZL-xHthLpG1w()Z
    .locals 1

    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$BJSpmmkJ993Oe5Ij6Lx8cbF5kaE(Ljava/lang/reflect/Field;Landroid/view/View$OnLayoutChangeListener;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/reflect/Field;Landroid/view/View$OnLayoutChangeListener;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FbL47PqnqeRBrhuOylXVe17Zftg(I)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->a(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GaGqtAAOLzNBN7tOFRDPOX-K23k(Landroid/content/SharedPreferences;)I
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->b(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HQ1XEqmEn5bqyBQ3rP2I55LjCuA(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KpZ5aK572pNdgyTRjYucJIii1gg(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/G;->a(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NroPiH6h0ArJrurWBnIUv7ca9Gc(Ldev/duo/hookprobe/G;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VtdP7KdRhqYxaQSqo_BSW83cbSY(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_d1WjFORdjWeCWUYPy2MmuzZXOA(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$digyPPAZIktqiHyriydn2ptuXnY(Landroid/content/SharedPreferences;)Z
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->a(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fjtnS7h_PcAK4omy4NsBwAr6OgQ(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/G;->b(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$gxZ-FlOmsyU5u0ba7eCmXmIAZDg(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hVKQ7_OjaEGxqioAN9u1ok86WyQ(Ljava/lang/reflect/Method;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lJ5XHECpRaJrxYVG9QQm9jxDC9c(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/duo/hookprobe/G;->a(Landroid/util/SparseArray;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$miHrMnRI5LP1crl6WIPTsBFG5EQ(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/G;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mmkHFRaKbGnrYsPLiJ5_Xk7DgTE(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/G;->a(Landroid/util/SparseArray;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/G;->s:Ljava/util/Set;

    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Ldev/duo/hookprobe/G;->t:Z

    .line 92
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/G;->v:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/github/libxposed/api/XposedModule;-><init>()V

    .line 6
    const-string v0, "unknown"

    iput-object v0, p0, Ldev/duo/hookprobe/G;->c:Ljava/lang/String;

    .line 10
    const/16 v0, 0x7e

    iput v0, p0, Ldev/duo/hookprobe/G;->f:I

    .line 11
    iput v0, p0, Ldev/duo/hookprobe/G;->g:I

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/G;->h:Ljava/util/Map;

    return-void
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 0

    .line 115
    invoke-static {p0, p1}, Ldev/duo/hookprobe/P;->g(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/G;)I
    .locals 0

    .line 3
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->h()I

    move-result p0

    return p0
.end method

.method private synthetic a(Landroid/util/SparseArray;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 201
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 202
    :cond_0
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/TypedValue;

    .line 203
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 204
    :cond_1
    iget-object v1, p0, Ldev/duo/hookprobe/G;->c:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Ldev/duo/hookprobe/G;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    iget-boolean v2, p0, Ldev/duo/hookprobe/G;->d:Z

    if-eqz v2, :cond_4

    const-string v2, "inner"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 207
    :cond_4
    invoke-direct {p0, v1}, Ldev/duo/hookprobe/G;->b(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v3, v2, 0x8

    .line 209
    iget v4, p2, Landroid/util/TypedValue;->data:I

    .line 210
    iput v3, p2, Landroid/util/TypedValue;->data:I

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "statusRes:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v5, 0x4

    invoke-direct {p0, p2, v5}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATUS_RESOURCE panel="

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " data="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "px)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoHookProbe"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-object v0
.end method

.method private synthetic a(Landroid/util/SparseArray;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "DuoHookProbe"

    .line 179
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v1

    .line 181
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p5, v2}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 183
    :cond_0
    invoke-interface {p5}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/res/Resources;

    .line 184
    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 185
    const/4 p5, 0x0

    invoke-virtual {p3, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 186
    invoke-virtual {p4, p2, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 187
    invoke-static {p3}, Ldev/duo/hookprobe/Q;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 190
    invoke-direct {p0, p4}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 191
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->c()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0, p4}, Ldev/duo/hookprobe/G;->b(Ljava/lang/String;)I

    move-result p2

    .line 193
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "awemeStatusRes:"

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v2, 0x4

    invoke-direct {p0, p5, v2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWEME_STATUS_RESOURCE panel="

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " bounds="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " px="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " -> "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 191
    :catchall_0
    move-exception p1

    .line 198
    const-string p2, "awemeStatusError"

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "AWEME_STATUS_RESOURCE read failed, native value kept"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method private synthetic a(Ldev/duo/hookprobe/Q;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v1, v0, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    return-object v0

    .line 167
    :cond_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-virtual {p1, v3}, Ldev/duo/hookprobe/Q;->a(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v5

    .line 169
    invoke-static {v5}, Ldev/duo/hookprobe/Q;->a(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 170
    const-string v1, "unknown"

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    iput-object v1, p0, Ldev/duo/hookprobe/G;->c:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 171
    iget-boolean v1, p0, Ldev/duo/hookprobe/G;->d:Z

    const-string v2, "inner"

    if-eqz v1, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 175
    :cond_2
    iget-object v1, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    invoke-direct {p0, p2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 176
    :cond_3
    invoke-direct {p0, p2}, Ldev/duo/hookprobe/G;->b(Ljava/lang/String;)I

    move-result v6

    .line 177
    move-object v4, v0

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Ldev/duo/hookprobe/Q;->a(Ljava/lang/Object;Landroid/util/SparseArray;Landroid/graphics/Rect;IZ)V

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parcel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOP_INSETS panel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " status/cutout -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoHookProbe"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static synthetic a(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 9
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Ldev/duo/hookprobe/G;->l:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/reflect/Field;Landroid/view/View$OnLayoutChangeListener;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 58
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/github/libxposed/api/XposedInterface$Chain;->getArg(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    if-eq v2, p0, :cond_1

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 60
    :goto_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_2

    .line 61
    sget-object p2, Ldev/duo/hookprobe/G;->v:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-object p0
.end method

.method private static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/Class;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p1, :cond_0

    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Ldev/duo/hookprobe/G;->p:Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sput-object p0, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    .line 14
    :goto_0
    sget-object p0, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    :try_start_0
    invoke-interface {p2}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-object p2

    .line 19
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p0

    if-nez p1, :cond_2

    .line 20
    sget-object p1, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 21
    :cond_2
    sget-object p2, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 22
    :goto_1
    throw p0
.end method

.method static synthetic a()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Ldev/duo/hookprobe/G;->v:Ljava/util/Set;

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 1

    .line 53
    sget v0, Ldev/duo/hookprobe/G;->u:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ldev/duo/hookprobe/G;->b(Z)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;F)V
    .locals 2

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATUS_FOREGROUND window alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DuoHookProbe"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Landroid/view/View;I)V
    .locals 1

    .line 52
    new-instance v0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 70
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    :cond_1
    const-string v0, "keyguardHeight"

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYGUARD_HEIGHT_ZERO class="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " height="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clipChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clipToPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    const-string v0, "DuoHookProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/ClassLoader;)V
    .locals 10

    const-string v0, "AWEME config unreadable, app left untouched"

    const-string v1, "DuoHookProbe"

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 119
    :try_start_0
    const-string v4, "duo_top"

    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    .line 125
    iput-object v4, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    .line 126
    new-instance v7, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, p1, v4, v7}, Ldev/duo/hookprobe/h;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Landroid/content/SharedPreferences;Ljava/util/function/BooleanSupplier;)V

    .line 129
    :try_start_1
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v4}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_1

    .line 130
    const-string v8, "com.ss.android.ugc.aweme"

    invoke-static {v4, v8}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 131
    :cond_1
    new-instance v8, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda9;

    invoke-direct {v8, v4}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda9;-><init>(Landroid/content/SharedPreferences;)V

    new-instance v9, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda10;

    invoke-direct {v9, v4}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda10;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {p0, p1, v8, v9}, Ldev/duo/hookprobe/D;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V

    .line 136
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONFIG package=com.ss.android.ugc.aweme process="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " enabled="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " path=awemeLive topSafePxInner="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "inner"

    .line 137
    invoke-direct {p0, v8}, Ldev/duo/hookprobe/G;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " topSafePxOuter="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "outer"

    .line 138
    invoke-direct {p0, v8}, Ldev/duo/hookprobe/G;->b(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " prefsMs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->c(Ljava/lang/ClassLoader;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v7, :cond_3

    .line 147
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->e()V

    .line 148
    :cond_3
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->d()V

    .line 150
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AWEME_SETUP ms="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :catch_0
    move-exception p1

    .line 151
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception p1

    .line 152
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 9

    .line 77
    const-string v0, "DuoHookProbe"

    const-string v1, "com.ss.android.ugc.aweme"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v0, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->a(Ljava/lang/ClassLoader;)V

    return-void

    :cond_1
    nop

    .line 87
    const/4 v1, 0x0

    const/16 v2, 0x7e

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "duo_top"

    invoke-virtual {p0, v4}, Lio/github/libxposed/api/XposedModule;->getRemotePreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 90
    invoke-static {p2}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    invoke-static {v3}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    .line 92
    :goto_0
    invoke-static {v3, p2}, Ldev/duo/hookprobe/P;->d(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ldev/duo/hookprobe/G;->d:Z

    .line 93
    const-string v5, "inner"

    invoke-static {v3, p2, v5}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    const-string v6, "outer"

    invoke-static {v3, p2, v6}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v4, :cond_3

    .line 95
    invoke-static {v3, p2}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    :cond_3
    new-instance v6, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;

    invoke-direct {v6, v3, p2}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda6;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    new-instance v7, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda7;

    invoke-direct {v7, v3, p2}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda7;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p0, p1, v6, v7}, Ldev/duo/hookprobe/D;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Ljava/util/function/BooleanSupplier;Ljava/util/function/IntSupplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_4
    move v1, v4

    goto :goto_2

    .line 91
    :catchall_0
    move-exception v4

    move-object v8, v3

    move v3, v2

    move v2, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    .line 96
    :goto_1
    nop

    .line 101
    const-string v6, "CONFIG unreadable, app left untouched"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v2

    move v2, v3

    move-object v3, v4

    .line 103
    :goto_2
    const-string v4, "com.tencent.mm"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, p1, p2, v3}, Ldev/duo/hookprobe/G;->a(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 104
    :cond_5
    iput v5, p0, Ldev/duo/hookprobe/G;->f:I

    .line 105
    iput v2, p0, Ldev/duo/hookprobe/G;->g:I

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CONFIG package="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " process="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " enabled="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " topSafePxInner="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " topSafePxOuter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    goto :goto_3

    .line 111
    :cond_6
    sget-object v0, Ldev/duo/hookprobe/P;->q:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    .line 113
    :cond_7
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->c(Ljava/lang/ClassLoader;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 114
    :cond_8
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->e()V

    :cond_9
    :goto_3
    return-void
.end method

.method private a(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WECHAT_SCALE process="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " preferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "DuoHookProbe"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Ldev/duo/hookprobe/G$b;

    invoke-direct {v0, p0, p3, p2}, Ldev/duo/hookprobe/G$b;-><init>(Ldev/duo/hookprobe/G;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Ldev/duo/hookprobe/V;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static a(Z)V
    .locals 3

    .line 23
    sput-boolean p0, Ldev/duo/hookprobe/G;->t:Z

    if-nez p0, :cond_1

    .line 24
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    sget-object v0, Ldev/duo/hookprobe/G;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz p0, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static a(ZZ)V
    .locals 3

    .line 26
    sget-object v0, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    .line 33
    :cond_3
    sget p0, Ldev/duo/hookprobe/G;->u:I

    add-int/2addr p0, v2

    sput p0, Ldev/duo/hookprobe/G;->u:I

    xor-int/lit8 p1, v0, 0x1

    .line 34
    sput-boolean p1, Ldev/duo/hookprobe/G;->r:Z

    .line 35
    sget-object p1, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    sget-object p1, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    :goto_1
    if-nez v0, :cond_5

    .line 37
    invoke-static {v1}, Ldev/duo/hookprobe/G;->b(Z)V

    .line 38
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ldev/duo/hookprobe/G;->a(Landroid/view/View;F)V

    return-void

    :cond_5
    const/4 v0, 0x0

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    .line 39
    sget-boolean v2, Ldev/duo/hookprobe/G;->l:Z

    if-nez v2, :cond_6

    goto :goto_2

    .line 45
    :cond_6
    invoke-static {p1, v0}, Ldev/duo/hookprobe/G;->a(Landroid/view/View;F)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->registerFrameCommitCallback(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_7
    :goto_2
    nop

    .line 50
    invoke-static {p1, v0}, Ldev/duo/hookprobe/G;->a(Landroid/view/View;F)V

    .line 51
    invoke-static {v1}, Ldev/duo/hookprobe/G;->b(Z)V

    return-void
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;)Z
    .locals 3

    .line 153
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-static {v0}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-static {p0, v0}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/G;Ljava/lang/String;I)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 4
    iget-object v1, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    invoke-static {v1}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    invoke-direct {p0}, Ldev/duo/hookprobe/G;->c()Z

    move-result v1

    const-string v2, "inner"

    const-string v3, "com.ss.android.ugc.aweme"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    .line 6
    invoke-static {p1, v3}, Ldev/duo/hookprobe/P;->d(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v4

    .line 7
    :cond_3
    iget-object v1, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    invoke-static {v1, v3}, Ldev/duo/hookprobe/P;->c(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v1

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    move p1, v4

    :goto_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    :goto_2
    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 2

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Ldev/duo/hookprobe/G;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lt v0, p2, :cond_1

    monitor-exit p0

    return v1

    .line 164
    :cond_1
    :try_start_1
    iget-object p2, p0, Ldev/duo/hookprobe/G;->h:Ljava/util/Map;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    .line 160
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static synthetic b(Landroid/content/SharedPreferences;)I
    .locals 1

    .line 55
    const-string v0, "com.ss.android.ugc.aweme"

    invoke-static {p0, v0}, Ldev/duo/hookprobe/P;->g(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    const-string v1, "outer"

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.ss.android.ugc.aweme"

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/G;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    invoke-static {p1, v1}, Ldev/duo/hookprobe/P;->e(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    const-string v0, "inner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Ldev/duo/hookprobe/G;->f:I

    return p1

    .line 6
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Ldev/duo/hookprobe/G;->g:I

    return p1

    .line 7
    :cond_3
    iget p1, p0, Ldev/duo/hookprobe/G;->g:I

    return p1
.end method

.method private static synthetic b(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 8
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Ldev/duo/hookprobe/G;->l:Z

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ldev/duo/hookprobe/G;->m:Ljava/lang/ThreadLocal;

    .line 9
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 21
    const-string v0, "com.android.systemui.statusbar.views.MiuiBatteryMeterView"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    const-string v2, "mBlurRadius"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 23
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    const-string v4, "com.android.systemui.statusbar.anim.MiuiStatusBarIconAnimatorController"

    invoke-static {v4, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 26
    const-string v1, "blurPoint"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 27
    invoke-virtual {p1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/util/ArrayList;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setMiSelfBlur"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 29
    new-instance v4, Ldev/duo/hookprobe/G$a;

    invoke-direct {v4, p0, v2, v3, p1}, Ldev/duo/hookprobe/G$a;-><init>(Ldev/duo/hookprobe/G;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 44
    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object p1

    const-string v1, "setBlurRadius"

    invoke-virtual {v0, v1, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda4;

    invoke-direct {v0, v2, v4}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda4;-><init>(Ljava/lang/reflect/Field;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-interface {p1, v0}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 52
    const-string p1, "DuoHookProbe"

    const-string v0, "BATTERY_BLUR replay hook installed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Z)V
    .locals 5

    const-string v0, "DuoHookProbe"

    .line 11
    sget-boolean v1, Ldev/duo/hookprobe/G;->l:Z

    if-ne p0, v1, :cond_0

    goto/16 :goto_3

    .line 12
    :cond_0
    sput-boolean p0, Ldev/duo/hookprobe/G;->l:Z

    .line 14
    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/G;->p:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    sget-object v3, Ldev/duo/hookprobe/G;->p:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_1
    sget-object v1, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    if-eqz v1, :cond_2

    sget-object v1, Ldev/duo/hookprobe/G;->o:Ljava/lang/reflect/Method;

    sget-object v3, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS_FOREGROUND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_3

    const-string v2, "shown"

    goto :goto_0

    .line 17
    :cond_3
    const-string v2, "hidden"

    .line 16
    :goto_0
    nop

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldev/duo/hookprobe/G;->p:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :catch_0
    move-exception v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_FOREGROUND refresh failed shown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    return v0
.end method

.method private static synthetic b(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 2

    .line 53
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ldev/duo/hookprobe/P;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {p1}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ldev/duo/hookprobe/P;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic c(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sput-object v0, Ldev/duo/hookprobe/G;->q:Landroid/view/View;

    .line 5
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/G;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v1, "com.ss.android.ugc.aweme"

    invoke-static {v1}, Ldev/duo/hookprobe/P;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v1}, Ldev/duo/hookprobe/P;->e(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c(Ljava/lang/ClassLoader;)Z
    .locals 5

    const-string v0, "DuoHookProbe"

    .line 6
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ldev/duo/hookprobe/Q;

    invoke-direct {v2, p1, v1}, Ldev/duo/hookprobe/Q;-><init>(Ljava/lang/ClassLoader;Z)V

    .line 7
    iget-object p1, v2, Ldev/duo/hookprobe/Q;->a:Ljava/lang/Class;

    const-string v3, "readFromParcel"

    const-class v4, Landroid/os/Parcel;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object p1

    new-instance v3, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/G;Ldev/duo/hookprobe/Q;)V

    invoke-interface {p1, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOP_INSETS installed inner="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Ldev/duo/hookprobe/G;->f:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " outer="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Ldev/duo/hookprobe/G;->g:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 28
    const-string v2, "TOP_INSETS not installed, app left untouched"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static synthetic d(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    sget-object v1, Ldev/duo/hookprobe/G;->s:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-boolean v1, Ldev/duo/hookprobe/G;->t:Z

    if-nez v1, :cond_1

    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 4
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 5
    const-string v1, "DuoHookProbe"

    :try_start_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 6
    const-string v0, "status_bar_height"

    const-string v2, "status_bar_height_portrait"

    const-string v3, "status_bar_height_landscape"

    const-string v5, "status_bar_height_default"

    filled-new-array {v0, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    .line 8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    const-class v0, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getBounds"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 13
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getMaxBounds"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 14
    const-class v0, Landroid/content/res/Resources;

    const-string v2, "getDimensionPixelSize"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v2, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda2;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v2}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AWEME_STATUS_RESOURCE installed ids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 41
    const-string v2, "AWEME_STATUS_RESOURCE not installed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic e(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {}, Ldev/duo/hookprobe/G;->g()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->a(Landroid/view/ViewGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 6
    const-string v1, "keyguardHeightError"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    const-string v1, "DuoHookProbe"

    const-string v2, "KEYGUARD_HEIGHT_ZERO row left at native height"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private e()V
    .locals 8

    .line 8
    const-string v0, "DuoHookProbe"

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    const-string v2, "status_bar_height"

    const-string v3, "status_bar_height_portrait"

    const-string v4, "status_bar_height_landscape"

    const-string v5, "status_bar_height_default"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    .line 11
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "android"

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    const-class v2, Landroid/content/res/AssetManager;

    const-string v3, "getResourceValue"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Landroid/util/TypedValue;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v4, v4, v5, v6}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v3, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda5;-><init>(Ldev/duo/hookprobe/G;Landroid/util/SparseArray;)V

    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_RESOURCE installed inner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldev/duo/hookprobe/G;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " outer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ldev/duo/hookprobe/G;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 12
    :catchall_0
    move-exception v1

    .line 39
    const-string v2, "STATUS_RESOURCE not installed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Ldev/duo/hookprobe/G;->r:Z

    return v0
.end method

.method private static g()Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/G;->k:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/hookprobe/G;->k:Ljava/lang/reflect/Method;

    .line 4
    :cond_0
    const-string v2, "0"

    const-string v3, "debug.duo.master"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    return v0

    .line 3
    :catchall_0
    move-exception v1

    .line 4
    return v0
.end method

.method private h()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ldev/duo/hookprobe/G;->k:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ldev/duo/hookprobe/G;->k:Ljava/lang/reflect/Method;

    :cond_0
    nop

    .line 4
    const-string v2, "debug.duo.scale.wx"

    const-string v3, ""

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ldev/duo/hookprobe/P;->b(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3
    :catch_0
    move-exception v1

    .line 5
    return v0
.end method


# virtual methods
.method public onModuleLoaded(Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    .line 2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$ModuleLoadedParam;->isSystemServer()Z

    move-result p1

    iput-boolean p1, p0, Ldev/duo/hookprobe/G;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JAVA_ENTRY process="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    const-string v0, "DuoHookProbe"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPackageLoaded(Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;)V
    .locals 11

    const-string v0, "onAttachedToWindow"

    const-string v1, "DuoHookProbe"

    .line 1
    iget-boolean v2, p0, Ldev/duo/hookprobe/G;->b:Z

    if-nez v2, :cond_6

    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->isFirstPackage()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3
    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4
    sget-object v0, Ldev/duo/hookprobe/MainActivity;->d:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ldev/duo/hookprobe/G;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v2, p0, Ldev/duo/hookprobe/G;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_5

    .line 10
    :cond_3
    :try_start_0
    const-string v2, "com.android.internal.policy.SystemBarUtils"

    .line 11
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 12
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 14
    const-string v3, "getStatusBarHeight"

    const-class v5, Landroid/content/Context;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 15
    const-string v5, "getStatusBarHeightForRotation"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    filled-new-array {v7, v6}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 17
    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda11;

    invoke-direct {v5}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 19
    invoke-virtual {p0, v2}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v2

    new-instance v3, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v3}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 21
    const-string v2, "STATUS_HEIGHT_ZERO hooks installed in SystemUI only"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.android.systemui.statusbar.window.StatusBarWindowControllerImpl"

    .line 26
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 27
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 29
    const-string v5, "com.android.systemui.statusbar.phone.PhoneStatusBarView"

    .line 30
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 31
    invoke-static {v5, v4, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 33
    const-string v7, "refreshStatusBarHeight"

    invoke-virtual {v3, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    .line 34
    const-string v7, "updateStatusBarHeight"

    invoke-virtual {v5, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Ldev/duo/hookprobe/G;->o:Ljava/lang/reflect/Method;

    .line 35
    sget-object v7, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    sget-object v7, Ldev/duo/hookprobe/G;->o:Ljava/lang/reflect/Method;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 37
    const-string v7, "getBarLayoutParamsForRotation"

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    .line 38
    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v7, "apply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$State"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 41
    invoke-static {v8, v4, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sget-object v8, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    sget-object v9, Ldev/duo/hookprobe/G;->o:Ljava/lang/reflect/Method;

    filled-new-array {v8, v6, v7, v9}, [Ljava/lang/reflect/Method;

    move-result-object v6

    move v7, v4

    :goto_0
    const/4 v8, 0x4

    if-ge v7, v8, :cond_4

    .line 42
    aget-object v8, v6, v7

    .line 46
    invoke-virtual {p0, v8}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v9

    new-instance v10, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda13;

    invoke-direct {v10, v8, v3}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda13;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-interface {v9, v10}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v5, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda14;

    invoke-direct {v5}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 62
    const-string v3, "STATUS_FOREGROUND refresh hooks installed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 46
    :catchall_0
    move-exception v3

    .line 62
    nop

    .line 64
    :try_start_2
    sput-object v2, Ldev/duo/hookprobe/G;->n:Ljava/lang/reflect/Method;

    .line 65
    const-string v5, "STATUS_FOREGROUND not installed, status bar stays hidden"

    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 62
    :goto_1
    nop

    .line 72
    :try_start_3
    const-string v3, "com.android.systemui.controlcenter.phone.widget.ControlCenterFakeStatusIcons"

    .line 73
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 74
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 76
    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v3

    new-instance v5, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda15;

    invoke-direct {v5}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v3, v5}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    .line 82
    const-string v3, "STATUS_FOREGROUND control center status copy hook installed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 84
    :try_start_4
    const-string v5, "STATUS_FOREGROUND control center status copy not hooked"

    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 82
    :goto_2
    nop

    .line 90
    :try_start_5
    const-string v3, "com.android.systemui.statusbar.phone.MiuiKeyguardStatusBarView"

    .line 92
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 93
    invoke-static {v3, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 96
    const-string v5, "updateKeyguardStatusBarHeight"

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    aget-object v5, v0, v4

    .line 97
    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/github/libxposed/api/XposedModule;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v5

    new-instance v6, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda16;

    invoke-direct {v6, p0}, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda16;-><init>(Ldev/duo/hookprobe/G;)V

    invoke-interface {v5, v6}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 109
    :cond_5
    const-string v0, "KEYGUARD_HEIGHT_ZERO hooks installed on MiuiKeyguardStatusBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 97
    :catchall_2
    move-exception v0

    .line 111
    :try_start_6
    const-string v2, "KEYGUARD_HEIGHT_ZERO not installed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 109
    :goto_4
    nop

    .line 114
    :try_start_7
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$PackageLoadedParam;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/G;->b(Ljava/lang/ClassLoader;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    .line 116
    :try_start_8
    const-string v0, "BATTERY_BLUR replay not installed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    .line 119
    const-string v0, "STATUS_HEIGHT_ZERO not installed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_5
    return-void
.end method

.method public onSystemServerStarting(Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/duo/hookprobe/K;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    .line 2
    invoke-interface {p1}, Lio/github/libxposed/api/XposedModuleInterface$SystemServerStartingParam;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/duo/hookprobe/n;->a(Lio/github/libxposed/api/XposedModule;Ljava/lang/ClassLoader;)V

    return-void
.end method
