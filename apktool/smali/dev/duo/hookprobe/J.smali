.class public final Ldev/duo/hookprobe/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x7

.field private static final b:I = 0x6

.field public static final c:Ljava/lang/String; = "sidebar"

.field public static final d:I = 0xc

.field public static final e:Ljava/lang/String; = "-"

.field public static final f:Ljava/lang/String; = "dock"

.field public static final g:Ljava/lang/String; = "back,home,recents,dock,dock,dock,-"

.field public static final h:[Ljava/lang/String;

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/regex/Pattern;

.field public static final k:I = 0x3

.field private static final l:Ljava/util/regex/Pattern;

.field public static final m:I = 0x190


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    const-string v24, "translate"

    const-string v25, "lastapp"

    const-string v1, "back"

    const-string v2, "home"

    const-string v3, "recents"

    const-string v4, "screenshot"

    const-string v5, "torch"

    const-string v6, "sleep"

    const-string v7, "ringer"

    const-string v8, "rotation"

    const-string v9, "screenrecord"

    const-string v10, "hotspot"

    const-string v11, "dark"

    const-string v12, "autobright"

    const-string v13, "location"

    const-string v14, "eyecare"

    const-string v15, "wechat"

    const-string v16, "alipay"

    const-string v17, "bluetooth"

    const-string v18, "airplane"

    const-string v19, "powersave"

    const-string v20, "cast"

    const-string v21, "huanji"

    const-string v22, "keepon"

    const-string v23, "calculator"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/J;->h:[Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Ldev/duo/hookprobe/J;->i:Ljava/util/Set;

    .line 11
    const-string v0, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/J;->j:Ljava/util/regex/Pattern;

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(@(0|[1-9][0-9]{0,4}))?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/J;->l:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFFII)I
    .locals 3

    if-lez p5, :cond_1

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-lez v1, :cond_1

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p4, -0x1

    div-float/2addr p0, p2

    float-to-double v1, p0

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-float/2addr p1, p3

    float-to-double v0, p1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p5, p5, -0x1

    mul-int/2addr p1, p4

    add-int/2addr p1, p0

    .line 66
    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(FII)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 80
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 60
    const-string v0, ","

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-ltz p1, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_1

    if-ltz p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p2, p0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 69
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 73
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p3, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Ldev/duo/hookprobe/J;->i:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a()[Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, "back,home,recents,dock,dock,dock,-"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 3
    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 4
    const-string v2, "-"

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 7
    invoke-static {p0, v1}, Ldev/duo/hookprobe/J;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-static {p0}, Ldev/duo/hookprobe/J;->d([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 9
    array-length v7, p0

    if-ge v6, v7, :cond_3

    .line 10
    aget-object v7, p0, v6

    if-eqz v7, :cond_2

    .line 11
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    aput-object v7, v1, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_1
    const-string v6, "sidebar"

    if-ge v5, v4, :cond_4

    add-int v7, v3, v5

    if-ge v7, v0, :cond_4

    .line 13
    aput-object v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v3, v4

    move v4, v3

    .line 15
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_a

    if-ge v4, v0, :cond_a

    .line 16
    aget-object v5, p0, v3

    if-eqz v5, :cond_9

    .line 17
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    const-string v7, "dock"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v5, v4, 0x3

    if-le v5, v0, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v4, 0x1

    .line 20
    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x2

    .line 21
    aput-object v7, v1, v8

    .line 22
    aput-object v7, v1, v4

    add-int/lit8 v4, v3, 0x2

    .line 23
    array-length v8, p0

    if-ge v4, v8, :cond_7

    add-int/lit8 v8, v3, 0x1

    aget-object v8, p0, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    aget-object v8, p0, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 26
    :cond_7
    move v4, v5

    goto :goto_3

    .line 23
    :cond_8
    add-int/lit8 v7, v4, 0x1

    .line 26
    aput-object v5, v1, v4

    move v4, v7

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    :goto_4
    return-object v1
.end method

.method public static a([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 7

    .line 47
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v0

    .line 48
    invoke-static {p0}, Ldev/duo/hookprobe/J;->d([Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_5

    if-gtz v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/lit8 v2, v0, 0x3

    add-int/lit8 v3, v0, 0x7

    .line 52
    const/4 v4, 0x7

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    if-ge v1, v4, :cond_2

    .line 54
    aget-object v5, p0, v1

    if-eqz v5, :cond_1

    .line 55
    const-string v6, "-"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "sidebar"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, p1

    :goto_2
    if-le v2, v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    sub-int/2addr v3, v0

    .line 59
    invoke-static {p0, v0, v3}, Ldev/duo/hookprobe/J;->a([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/lang/String;II)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    const/4 v1, 0x3

    if-lt p2, v1, :cond_9

    const/4 v1, 0x7

    if-le p2, v1, :cond_0

    goto :goto_4

    :cond_0
    if-ltz p1, :cond_9

    add-int v2, p1, p2

    if-le v2, v1, :cond_1

    goto :goto_4

    .line 39
    :cond_1
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    return-object v0

    :cond_2
    move v3, p1

    :goto_0
    const-string v4, "-"

    const-string v5, "sidebar"

    if-ge v3, v2, :cond_5

    .line 41
    array-length v6, p0

    if-ge v3, v6, :cond_3

    aget-object v6, p0, v3

    goto :goto_1

    :cond_3
    move-object v6, v0

    :goto_1
    if-eqz v6, :cond_4

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 44
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_7

    .line 45
    aget-object v3, p0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    aput-object v4, p0, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    nop

    :goto_3
    if-ge v0, p2, :cond_8

    add-int v1, p1, v0

    .line 46
    aput-object v5, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    return-object v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 27
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_5

    const/4 v2, 0x7

    if-ge v1, v2, :cond_5

    .line 28
    aget-object v3, p0, v0

    if-eqz v3, :cond_4

    .line 29
    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    const-string v4, "dock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v3, v1, 0x3

    if-le v3, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 32
    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x2

    .line 33
    aput-object v4, p1, v2

    .line 34
    aput-object v4, p1, v1

    add-int/lit8 v1, v0, 0x2

    .line 35
    array-length v2, p0

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    move v1, v3

    goto :goto_1

    .line 38
    :cond_2
    move v1, v3

    goto :goto_1

    .line 35
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 38
    aput-object v3, p1, v1

    move v1, v2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 27
    :cond_0
    const-string v1, ","

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ldev/duo/hookprobe/J;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_0

    .line 21
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "-"

    if-eqz p0, :cond_2

    .line 22
    array-length v3, p0

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    .line 23
    goto :goto_3

    .line 22
    :cond_3
    move-object v2, v3

    .line 23
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    const-string v0, "app:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/duo/hookprobe/J;->j:Ljava/util/regex/Pattern;

    .line 2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b()[Ljava/lang/String;
    .locals 2

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const-string v1, "sidebar"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    .line 5
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-static {p0}, Ldev/duo/hookprobe/J;->d([Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_5

    if-gtz v1, :cond_0

    goto :goto_4

    :cond_0
    add-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x3

    add-int/lit8 v3, v1, -0x7

    .line 11
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_2

    if-ltz v0, :cond_2

    .line 13
    aget-object v4, p0, v0

    if-eqz v4, :cond_1

    .line 14
    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "sidebar"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 p1, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    if-le v3, v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    sub-int/2addr v1, v2

    .line 18
    invoke-static {p0, v2, v1}, Ldev/duo/hookprobe/J;->a([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c([Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 21
    :cond_0
    const-string v2, ","

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 22
    array-length v2, v0

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v2, v4, :cond_1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_1
    array-length v2, v0

    if-eq v2, v5, :cond_2

    return-object v1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    const/4 v4, -0x2

    move v6, v2

    move v7, v6

    move v8, v3

    :goto_1
    const-string v9, ""

    const-string v10, "sidebar"

    if-ge v6, v5, :cond_7

    .line 26
    aget-object v11, v0, v6

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 27
    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    if-gez v8, :cond_5

    move v8, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-eq v6, v4, :cond_6

    return-object v1

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v4, v6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x3

    if-eqz v7, :cond_8

    if-ge v7, v4, :cond_8

    return-object v1

    .line 34
    :cond_8
    new-array v6, v5, [Ljava/lang/String;

    .line 35
    const-string v11, "-"

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v12, v2

    :goto_5
    if-ge v12, v7, :cond_9

    add-int v13, v8, v12

    .line 36
    aput-object v10, v6, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 37
    :cond_9
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move v13, v3

    move v3, v2

    :goto_6
    const-string v14, "dock"

    if-ge v2, v5, :cond_13

    if-eqz v7, :cond_a

    if-lt v2, v8, :cond_a

    add-int v15, v8, v7

    if-ge v2, v15, :cond_a

    goto :goto_a

    .line 41
    :cond_a
    aget-object v15, v0, v2

    if-nez v15, :cond_b

    move-object v15, v9

    goto :goto_7

    :cond_b
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 42
    :goto_7
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_12

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_12

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    goto :goto_a

    .line 43
    :cond_c
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-nez v3, :cond_d

    move v13, v2

    goto :goto_8

    :cond_d
    add-int v14, v13, v3

    if-eq v2, v14, :cond_e

    return-object v1

    :cond_e
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 49
    :cond_f
    invoke-static {v15}, Ldev/duo/hookprobe/J;->i(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_9

    .line 50
    :cond_10
    aput-object v15, v6, v2

    goto :goto_a

    :cond_11
    :goto_9
    return-object v1

    :cond_12
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    if-eqz v3, :cond_14

    if-eq v3, v4, :cond_14

    return-object v1

    :cond_14
    if-ne v3, v4, :cond_17

    if-ltz v13, :cond_16

    const/4 v0, 0x4

    if-le v13, v0, :cond_15

    goto :goto_c

    :cond_15
    move v0, v13

    :goto_b
    add-int/lit8 v1, v13, 0x3

    if-ge v0, v1, :cond_17

    .line 55
    aput-object v14, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    :goto_c
    return-object v1

    :cond_17
    return-object v6
.end method

.method public static c([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 12

    .line 2
    invoke-static {p0}, Ldev/duo/hookprobe/J;->f([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x7

    rsub-int/lit8 v0, v0, 0x7

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v0

    .line 6
    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "sidebar"

    const-string v5, "-"

    const/4 v6, 0x0

    if-eqz p0, :cond_4

    move v7, v6

    move v8, v7

    move v9, v8

    .line 8
    :goto_0
    array-length v10, p0

    if-ge v7, v10, :cond_5

    .line 9
    aget-object v10, p0, v7

    if-eqz v10, :cond_3

    .line 10
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    if-ltz v0, :cond_2

    if-le v7, v0, :cond_2

    add-int/lit8 v11, v9, 0x1

    .line 11
    aput-object v10, v3, v9

    move v9, v11

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v8, 0x1

    .line 12
    aput-object v10, v2, v8

    move v8, v11

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_4
    move v8, v6

    move v9, v8

    .line 12
    :cond_5
    if-gez v0, :cond_6

    .line 14
    new-array p0, v1, [Ljava/lang/String;

    move-object v3, v2

    move v9, v8

    move-object v2, p0

    move v8, v6

    goto :goto_2

    :cond_6
    nop

    .line 15
    :goto_2
    new-array p0, v1, [Ljava/lang/String;

    .line 16
    invoke-static {p0, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v6

    move v1, v0

    :goto_3
    if-ge v0, v8, :cond_7

    add-int/lit8 v5, v1, 0x1

    .line 18
    aget-object v7, v2, v0

    aput-object v7, p0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_3

    :cond_7
    move v0, v6

    :goto_4
    if-ge v0, p1, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 19
    aput-object v4, p0, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_4

    :cond_8
    nop

    :goto_5
    if-ge v6, v9, :cond_9

    add-int/lit8 p1, v1, 0x1

    .line 20
    aget-object v0, v3, v6

    aput-object v0, p0, v1

    add-int/lit8 v6, v6, 0x1

    move v1, p1

    goto :goto_5

    :cond_9
    return-object p0
.end method

.method public static d([Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/J;->e([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    add-int v2, v0, v1

    .line 4
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v2, p0, v2

    const-string v3, "sidebar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p0}, Ldev/duo/hookprobe/J;->c(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Ldev/duo/hookprobe/J;->a()[Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static e([Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    const-string v3, "sidebar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v4, Ldev/duo/hookprobe/J;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3}, Ldev/duo/hookprobe/J;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ldev/duo/hookprobe/J;->h(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ldev/duo/hookprobe/J;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x190

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static f([Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    if-eqz v3, :cond_0

    const-string v4, "-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "sidebar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6
    sget-object v4, Ldev/duo/hookprobe/J;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v3}, Ldev/duo/hookprobe/J;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ldev/duo/hookprobe/J;->h(Ljava/lang/String;)I

    move-result v3

    invoke-static {v4, v3}, Ldev/duo/hookprobe/J;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ldev/duo/hookprobe/J;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ldev/duo/hookprobe/J;->b(Ljava/lang/String;)Z

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
