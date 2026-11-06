.class public final Lbtm/m/os4/systemuihook/newnotificationcenter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;,
        Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;,
        Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;,
        Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "ios_notification_clock_glass_"

.field public static final b:Ljava/lang/String; = "ios_notification_clock_glass_enabled"

.field public static final c:Ljava/lang/String; = "ios_notification_clock_glass_refraction_blur"

.field public static final d:Ljava/lang/String; = "ios_notification_clock_glass_background_blur"

.field public static final e:Ljava/lang/String; = "ios_notification_clock_glass_background_scale"

.field public static final f:Ljava/lang/String; = "ios_notification_clock_glass_background_opacity"

.field public static final g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

.field private static final h:Landroid/os/Handler;

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

.field private static m:Z

.field private static n:Z


# direct methods
.method public static synthetic $r8$lambda$4Fildc7oQgT1QVVk2ceLbzN8soE()V
    .locals 0

    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a()V

    return-void
.end method

.method public static synthetic $r8$lambda$AU3jAvepxoB7ZqWANTbu1PnxhRI(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BsRqObHm4wlajvvSfar0ft3YMSc(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D49K1vYe0zfSjqTN7zfvgZt0_xY(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I78fwQe1Y14X7Hrmh_TnczlZWfU(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->c(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WijYMd-MfUb3rM0HXPU_JbvkFdw(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->f(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a3febbzKSwrhCAzyIdH0-pQ9pEk(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->d(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f1q8zIHMPCF7UKXqAtORVvmb5iY(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->e(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nGcua-uuWWENa5bboa7q39pveF8(Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;Ljava/lang/reflect/Method;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;Ljava/lang/reflect/Method;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$y-mNn3DU6C5wVfqGg0rzXuQTpy0(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const-string v1, "luminance"

    const-string v2, "\u660e\u5ea6\u6df7\u5408\u5f3a\u5ea6"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, -0x64

    invoke-direct/range {v0 .. v8}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v8, 0xc8

    const/4 v9, 0x0

    const-string v2, "saturation"

    const-string v3, "\u6750\u8d28\u9971\u548c\u5ea6"

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/16 v7, -0x64

    invoke-direct/range {v1 .. v9}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v9, 0xc8

    const/4 v10, 0x0

    const-string v3, "brightness"

    const-string v4, "\u6df7\u5408\u4eae\u5ea6"

    const/4 v5, 0x6

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, -0x64

    invoke-direct/range {v2 .. v10}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v10, 0xc8

    const/4 v11, 0x0

    const-string v4, "alpha"

    const-string v5, "\u5185\u5c42\u4e0d\u900f\u660e\u5ea6"

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v9, -0x64

    invoke-direct/range {v3 .. v11}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v11, 0xc8

    const/4 v12, 0x0

    const-string v5, "refraction"

    const-string v6, "\u6298\u5c04\u7387"

    const/16 v7, 0x20

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/16 v10, -0x64

    invoke-direct/range {v4 .. v12}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v5, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v12, 0xc8

    const/4 v13, 0x0

    const-string v6, "thickness"

    const-string v7, "\u5149\u5b66\u539a\u5ea6"

    const/16 v8, 0x15

    const/4 v9, 0x0

    const/high16 v10, 0x42f00000    # 120.0f

    const/16 v11, -0x64

    invoke-direct/range {v5 .. v13}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v6, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v13, 0xc8

    const/4 v14, 0x0

    const-string v7, "background_saturation"

    const-string v8, "\u91c7\u6837\u80cc\u666f\u9971\u548c\u5ea6"

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/high16 v11, 0x40400000    # 3.0f

    const/16 v12, -0x64

    invoke-direct/range {v6 .. v14}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v7, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v14, 0xc8

    const/4 v15, 0x0

    const-string v8, "background_brightness"

    const-string v9, "\u91c7\u6837\u80cc\u666f\u4eae\u5ea6"

    const/16 v10, 0x22

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, -0x64

    invoke-direct/range {v7 .. v15}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v8, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v15, 0xc8

    const/16 v16, 0x0

    const-string v9, "burn"

    const-string v10, "\u80cc\u666f\u70e7\u707c\u5f3a\u5ea6"

    const/16 v11, 0x23

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, -0x64

    invoke-direct/range {v8 .. v16}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v9, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v16, 0xc8

    const/16 v17, 0x0

    const-string v10, "edge"

    const-string v11, "\u8fb9\u7f18\u5bbd\u5ea6"

    const/16 v12, 0x13

    const/4 v13, 0x0

    const/high16 v14, 0x42c80000    # 100.0f

    const/16 v15, -0x64

    invoke-direct/range {v9 .. v17}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v10, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v17, 0x64

    const/16 v18, 0x1

    const-string v11, "edge_feather"

    const-string v12, "\u8fb9\u7f18\u7fbd\u5316"

    const/16 v13, 0x18

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v16, -0xc8

    invoke-direct/range {v10 .. v18}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v11, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v18, 0xc8

    const/16 v19, 0x0

    const-string v12, "reflection_offset"

    const-string v13, "\u53cd\u5c04\u504f\u79fb"

    const/16 v14, 0x16

    const/4 v15, 0x0

    const/high16 v16, 0x447a0000    # 1000.0f

    const/16 v17, -0x64

    invoke-direct/range {v11 .. v19}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v12, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v19, 0xc8

    const/16 v20, 0x0

    const-string v13, "light"

    const-string v14, "\u9ad8\u5149\u5f3a\u5ea6"

    const/16 v15, 0x1c

    const/16 v16, 0x0

    const/high16 v17, 0x40000000    # 2.0f

    const/16 v18, -0x64

    invoke-direct/range {v12 .. v20}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    new-instance v13, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/16 v20, 0xc8

    const/16 v21, 0x0

    const-string v14, "darker"

    const-string v15, "\u538b\u6697\u5f3a\u5ea6"

    const/16 v16, 0x7

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, -0x64

    invoke-direct/range {v13 .. v21}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;IFFIIZ)V

    const/16 v14, 0xe

    new-array v14, v14, [Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v5, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v9, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    const/16 v0, 0xb

    aput-object v11, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v13, v14, v0

    sput-object v14, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->h:Landroid/os/Handler;

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->j:Ljava/util/WeakHashMap;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    .line 26
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->g:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(FI)F
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 109
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method static a(II)I
    .locals 2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p1

    mul-int/2addr p0, p1

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0x1f4

    invoke-static {p0, v0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private static a(III)I
    .locals 0

    .line 123
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;
    .locals 2

    .line 54
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getThisObject()Ljava/lang/Object;

    move-result-object p0

    .line 55
    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    check-cast p0, Landroid/view/View;

    .line 57
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;
    .locals 4

    .line 96
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/a$a;)V

    .line 100
    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    monitor-exit v0

    return-object v2

    .line 100
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static synthetic a(Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;Ljava/lang/reflect/Method;Ljava/lang/String;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    :try_start_0
    invoke-interface {p0, p3, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;->a(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ios clock glass "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 40
    invoke-interface {p3}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->getArgs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    nop

    .line 43
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 44
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 47
    iput v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->i:I

    .line 48
    const/4 v3, 0x1

    iput-boolean v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->j:Z

    .line 49
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->h:Ljava/lang/reflect/Method;

    .line 50
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 52
    :cond_1
    :goto_0
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-nez p1, :cond_2

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 53
    :cond_2
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->c:I

    invoke-static {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ios_notification_clock_glass_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "edge_feather"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "edge_feather_inverse"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 111
    instance-of v0, p0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 112
    :cond_0
    check-cast p0, Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 115
    instance-of v5, v4, Landroid/graphics/Point;

    if-nez v5, :cond_1

    return-object v1

    .line 116
    :cond_1
    check-cast v4, Landroid/graphics/Point;

    .line 117
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    invoke-static {v5, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b(II)I

    move-result v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a()V
    .locals 12

    .line 58
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 59
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 63
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v6, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    :try_start_2
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_2

    iget-object v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->b:[F

    if-eqz v7, :cond_2

    .line 67
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->d:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_3

    iget-boolean v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->g:Z

    if-eqz v7, :cond_3

    .line 70
    iget v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_3
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->h:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_4

    iget-boolean v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->j:Z

    if-eqz v7, :cond_4

    .line 73
    iget v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_4
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->k:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_5

    iget-boolean v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->m:Z

    if-eqz v7, :cond_5

    .line 76
    iget v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->l:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->n:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_6

    iget-object v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->o:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 79
    invoke-static {v7}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 80
    :cond_6
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->q:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_7

    iget-object v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->p:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_7

    iget-object v7, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 81
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v6, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/graphics/Point;

    iget-object v10, v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->p:Ljava/lang/reflect/Method;

    iget v11, v9, Landroid/graphics/Point;->x:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v11, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v4

    .line 85
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ios clock glass refresh: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 87
    :cond_7
    :goto_2
    invoke-static {v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->j(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v6, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v5}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 92
    :cond_8
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    .line 88
    :catchall_2
    move-exception v0

    .line 93
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 94
    throw v0

    :catchall_3
    move-exception v1

    .line 95
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public static a(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 2
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b(Landroid/content/SharedPreferences;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    move-result-object v0

    sput-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    .line 3
    sget-boolean v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    sput-boolean v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->m:Z

    .line 5
    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 11
    :cond_0
    sget-boolean p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->n:Z

    if-eqz p0, :cond_1

    return-void

    .line 12
    :cond_1
    sput-boolean v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->n:Z

    .line 13
    const-class p0, [F

    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "setMiGlass"

    invoke-static {v1, p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 14
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p0, p0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "setMiGlassBlurRadius"

    invoke-static {v2, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 15
    filled-new-array {p0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "setMiBackgroundBlurRadius"

    invoke-static {v2, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 16
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "setMiBackgroundBlurScaleRatio"

    invoke-static {v2, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 17
    const-class v0, Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "setMiBackgroundBlendColors"

    invoke-static {v2, v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 18
    filled-new-array {p0, p0}, [Ljava/lang/Class;

    move-result-object p0

    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "addMiBackgroundBlendColor"

    invoke-static {v1, p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    .line 19
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    new-instance v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "clearMiBackgroundBlendColor"

    invoke-static {v1, p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 20
    const-string v0, "ios_notification_clock_glass_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b(Landroid/content/SharedPreferences;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    .line 22
    sget-object p0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->h:Landroid/os/Handler;

    new-instance p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/Class;Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;",
            ")V"
        }
    .end annotation

    .line 23
    :try_start_0
    const-class v0, Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a()Lio/github/libxposed/api/XposedInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/github/libxposed/api/XposedInterface;->hook(Ljava/lang/reflect/Executable;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    sget-object v1, Lio/github/libxposed/api/XposedInterface$ExceptionMode;->PROTECTIVE:Lio/github/libxposed/api/XposedInterface$ExceptionMode;

    .line 26
    invoke-interface {v0, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->setExceptionMode(Lio/github/libxposed/api/XposedInterface$ExceptionMode;)Lio/github/libxposed/api/XposedInterface$HookBuilder;

    move-result-object v0

    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda9;

    invoke-direct {v1, p2, p1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$$ExternalSyntheticLambda9;-><init>(Lbtm/m/os4/systemuihook/newnotificationcenter/a$b;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v1}, Lio/github/libxposed/api/XposedInterface$HookBuilder;->intercept(Lio/github/libxposed/api/XposedInterface$Hooker;)Lio/github/libxposed/api/XposedInterface$HookHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ios clock glass API unavailable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a([F)Z
    .locals 6

    .line 104
    array-length v0, p0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 106
    :cond_0
    array-length v0, p0

    move v1, v2

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_4

    aget v4, p0, v1

    .line 107
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    return v3
.end method

.method static b(II)I
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    ushr-int/lit8 v0, p0, 0x18

    .line 41
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {p1, v1, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p1

    mul-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v1, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static b(Landroid/content/SharedPreferences;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;
    .locals 10

    .line 20
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    array-length v0, v0

    new-array v7, v0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 21
    :goto_0
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 22
    aget-object v2, v2, v1

    .line 23
    iget-object v3, v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->a:Ljava/lang/String;

    invoke-static {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget v4, v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->f:I

    iget v2, v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->g:I

    invoke-static {v3, v4, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result v2

    aput v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    .line 26
    const-string v2, "ios_notification_clock_glass_enabled"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 27
    const-string v3, "ios_notification_clock_glass_refraction_blur"

    const/16 v4, 0x64

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xc8

    invoke-static {v3, v0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result v3

    .line 28
    const-string v6, "ios_notification_clock_glass_background_blur"

    invoke-interface {p0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6, v0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result v6

    .line 29
    const-string v8, "ios_notification_clock_glass_background_scale"

    invoke-interface {p0, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8, v0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result v8

    .line 30
    const-string v9, "ios_notification_clock_glass_background_opacity"

    invoke-interface {p0, v9, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, v0, v5}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(III)I

    move-result p0

    move v4, v6

    move v5, v8

    move v6, p0

    invoke-direct/range {v1 .. v7}, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;-><init>(ZIIII[I)V

    return-object v1
.end method

.method private static b(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    nop

    .line 3
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v3

    .line 7
    :try_start_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 8
    iget-object v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    .line 9
    :cond_1
    iget-object v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->p:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    const/4 p1, 0x0

    :try_start_1
    const-class v4, Landroid/view/View;

    const-string v5, "clearMiBackgroundBlendColor"

    invoke-virtual {v4, v5, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->q:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 14
    :try_start_2
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->q:Ljava/lang/reflect/Method;

    .line 16
    :goto_0
    monitor-exit v3

    goto :goto_1

    .line 8
    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 18
    :cond_2
    :goto_1
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-nez p1, :cond_3

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :cond_3
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->e:I

    invoke-static {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b([F)[F
    .locals 9

    .line 31
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 32
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-object v1, v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->f:[I

    const/4 v2, 0x0

    .line 33
    :goto_0
    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->g:[Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 34
    aget-object v3, v3, v2

    .line 35
    aget v4, v1, v2

    .line 36
    iget-boolean v5, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->h:Z

    if-eqz v5, :cond_0

    neg-int v4, v4

    :cond_0
    if-eqz v4, :cond_3

    .line 37
    iget v5, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->c:I

    array-length v6, p0

    if-lt v5, v6, :cond_1

    goto :goto_2

    .line 38
    :cond_1
    aget v6, p0, v5

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    int-to-float v4, v4

    div-float/2addr v4, v8

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    mul-float/2addr v4, v6

    .line 40
    :goto_1
    iget v6, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->d:F

    iget v3, v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a$d;->e:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v0, v5

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static c(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 7
    iput-object v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->o:Ljava/util/ArrayList;

    .line 8
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->n:Ljava/lang/reflect/Method;

    .line 9
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 11
    :cond_1
    :goto_0
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-nez p1, :cond_2

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :cond_2
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->e:I

    invoke-static {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_3
    :goto_1
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    if-eqz p1, :cond_0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->r:Ljava/util/ArrayList;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 5
    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_6

    .line 3
    instance-of v2, v1, [F

    if-nez v2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    check-cast v1, [F

    .line 5
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 7
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->c:[F

    if-eqz v3, :cond_1

    if-ne v1, v3, :cond_1

    iget-object v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->b:[F

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 8
    :goto_0
    nop

    .line 10
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    iput-object v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->b:[F

    .line 12
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->a:Ljava/lang/reflect/Method;

    .line 14
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-eqz p1, :cond_4

    invoke-static {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a([F)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->b([F)[F

    move-result-object p1

    .line 19
    monitor-enter v2

    :try_start_1
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->c:[F

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_1
    if-ne v1, v3, :cond_5

    .line 22
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :catchall_1
    move-exception p0

    .line 23
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 24
    :cond_6
    :goto_2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    nop

    .line 3
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 5
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    sget-object v4, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 7
    :try_start_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 8
    iput v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->e:I

    .line 9
    iput v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->f:I

    .line 10
    iput-boolean v2, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->g:Z

    .line 11
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->d:Ljava/lang/reflect/Method;

    .line 12
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 14
    :cond_1
    :goto_0
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-nez p1, :cond_2

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->b:I

    .line 16
    invoke-static {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lio/github/libxposed/api/XposedInterface$Chain;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    nop

    .line 3
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Lio/github/libxposed/api/XposedInterface$Chain;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(Landroid/view/View;)Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;

    move-result-object v0

    .line 7
    iput v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->l:F

    .line 8
    const/4 v3, 0x1

    iput-boolean v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->m:Z

    .line 9
    iput-object p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/a$c;->k:Ljava/lang/reflect/Method;

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 12
    :cond_1
    :goto_0
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget-boolean p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->a:Z

    if-nez p1, :cond_2

    invoke-interface {p0}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    sget-object p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->l:Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;

    iget p1, p1, Lbtm/m/os4/systemuihook/newnotificationcenter/a$e;->d:I

    invoke-static {v1, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/a;->a(FI)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/github/libxposed/api/XposedInterface$Chain;->proceed([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
