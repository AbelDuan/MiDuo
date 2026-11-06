.class public final Lbtm/m/os4/systemuihook/hypermusiccover/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:F = 0.12f

.field private static volatile A0:F = 0.0f

.field private static final B:F = 80.0f

.field private static volatile B0:F = 0.0f

.field private static final C:F = 0.7f

.field private static volatile C0:F = 0.0f

.field private static volatile D:I = 0x0

.field private static volatile D0:Z = false

.field private static final E:F = 0.65f

.field private static volatile E0:Ljava/lang/Object; = null

.field private static final F:F = 100.0f

.field private static volatile F0:Ljava/lang/String; = null

.field private static final G:F = 0.9f

.field private static volatile G0:J = 0x0L

.field private static final H:F = 200.0f

.field private static final I:F = 1.0f

.field private static J:Lbtm/m/os4/systemuihook/hypermusiccover/i; = null

.field private static K:Lbtm/m/os4/systemuihook/hypermusiccover/i; = null

.field private static volatile L:F = 0.0f

.field private static final M:F = 24.0f

.field private static volatile N:F = 0.0f

.field private static volatile O:J = 0x0L

.field private static volatile P:Z = false

.field private static volatile Q:Landroid/graphics/Bitmap; = null

.field private static volatile R:Landroid/graphics/Bitmap; = null

.field private static final S:Ljava/lang/Runnable;

.field private static volatile T:Landroid/view/View; = null

.field private static final U:Z = false

.field private static final V:Z = false

.field private static final W:I = 0x64

.field private static final X:I = 0x0

.field private static final Y:Z = true

.field private static final Z:F = 0.15f

.field private static final a:Ljava/lang/String; = "[MCShade] "

.field private static a0:I = 0x0

.field private static final b:Landroid/os/Handler;

.field private static b0:F = 0.0f

.field private static final c:Ljava/lang/String; = "com.android.systemui.shade.NotificationPanelView"

.field private static volatile c0:F = 0.0f

.field private static volatile d:Landroid/view/ViewGroup; = null

.field private static volatile d0:F = 0.0f

.field private static volatile e:Landroid/widget/FrameLayout; = null

.field private static final e0:Landroid/view/ViewOutlineProvider;

.field private static volatile f:Landroid/widget/ImageView; = null

.field private static f0:J = 0x0L

.field private static volatile g:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static g0:J = 0x0L

.field private static volatile h:I = 0x0

.field private static h0:J = 0x0L

.field private static volatile i:Z = false

.field private static i0:J = 0x0L

.field private static volatile j:Landroid/graphics/Bitmap; = null

.field private static j0:J = 0x0L

.field private static final k:I = 0x0

.field private static volatile k0:[F = null

.field private static volatile l:Z = false

.field private static volatile l0:I = 0x0

.field private static volatile m:Z = false

.field private static volatile m0:F = 0.0f

.field private static n:Z = false

.field private static volatile n0:Z = false

.field private static o:I = 0x0

.field private static volatile o0:F = 0.0f

.field private static volatile p:I = 0x0

.field private static volatile p0:F = 0.0f

.field private static final q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

.field private static volatile q0:F = 0.0f

.field private static r:Z = false

.field private static volatile r0:I = 0x0

.field private static s:Z = false

.field private static final s0:F = 0.006f

.field private static t:Lbtm/m/os4/systemuihook/hypermusiccover/i; = null

.field private static final t0:F = 0.05f

.field private static u:F = 0.0f

.field private static final u0:F = 0.001f

.field private static v:F = 0.0f

.field private static final v0:F = 24.0f

.field private static w:Landroid/content/SharedPreferences; = null

.field private static final w0:I = 0x6

.field private static final x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static volatile x0:F = 0.0f

.field private static final y:F = 0.045f

.field private static volatile y0:Z = false

.field private static final z:F = 0.7f

.field private static volatile z0:Z


# direct methods
.method public static synthetic $r8$lambda$-Krqj_CC3ZGRS4Aq9sP3cBV9wLE(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DVIX5j7FjoPb69u-vRExfPZg1x0(Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aAYiYeLJW_u-UF3Cfa38ESyDq2U(F)V
    .locals 0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLl8pKyvoTgFjvhXQ5JYOkEGXZ4(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b:Landroid/os/Handler;

    .line 14
    const/4 v0, -0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h:I

    .line 35
    new-instance v1, Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;-><init>()V

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    .line 273
    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda0;-><init>()V

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 443
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    .line 469
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->N:F

    .line 745
    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/h$b;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h$b;-><init>()V

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->S:Ljava/lang/Runnable;

    .line 1136
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a0:I

    .line 1137
    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b0:F

    .line 1138
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    .line 1157
    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/h$e;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h$e;-><init>()V

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e0:Landroid/view/ViewOutlineProvider;

    .line 1366
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 1611
    const-string v0, "?"

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Z
    .locals 2

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static B()Z
    .locals 2

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static C()Z
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->d()Z

    move-result v0

    return v0
.end method

.method static D()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static E()V
    .locals 9

    .line 1
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MCShade] frame cost: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frames over "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j0:J

    sget-wide v7, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i0:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xf4240

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, ours avg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g0:J

    div-long/2addr v5, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "us, max "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h0:J

    div-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 6
    sput-wide v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f0:J

    .line 7
    sput-wide v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g0:J

    .line 8
    sput-wide v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h0:J

    return-void
.end method

.method private static F()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "debug.duo.master"

    const-string v3, ""

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MCShade] master switch unreadable, treated as on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return v0
.end method

.method public static G()V
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    :cond_0
    return-void
.end method

.method public static H()V
    .locals 0

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    return-void
.end method

.method public static I()V
    .locals 3

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v1, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FFFZ)F

    .line 4
    invoke-virtual {v0, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 5
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    .line 6
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->H()V

    return-void
.end method

.method public static J()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r:Z

    return-void
.end method

.method public static K()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s:Z

    return-void
.end method

.method private static L()Z
    .locals 6

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->E0:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isTracking"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    return v2

    :catchall_0
    move-exception v3

    .line 8
    :cond_1
    :try_start_1
    const-string v3, "mNotifInjector"

    invoke-static {v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    const-string v3, "panelOpening"

    invoke-static {v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "panelCollapsing"

    invoke-static {v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "panelIntercepting"

    .line 11
    invoke-static {v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :catchall_1
    move-exception v0

    :cond_4
    return v1
.end method

.method static M()Landroid/view/View;
    .locals 6

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c(Landroid/view/ViewGroup;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    sput-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T:Landroid/view/View;

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static N()F
    .locals 1

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->L:F

    return v0
.end method

.method public static O()V
    .locals 6

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->o:I

    .line 3
    sget-boolean v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-ne v0, v4, :cond_1

    sget v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    if-ne v3, v4, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MCShade] iOS notification center "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string v5, "on"

    goto :goto_1

    :cond_2
    const-string v5, "off"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n:Z

    if-eqz v5, :cond_3

    if-nez v0, :cond_3

    const-string v5, " (MiDuo off)"

    goto :goto_2

    :cond_3
    const-string v5, ""

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->P()V

    .line 6
    sget-boolean v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Z)V

    .line 7
    :cond_4
    sput-boolean v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 8
    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_5

    .line 9
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->V()V

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->U()V

    .line 11
    :goto_3
    sput v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    .line 12
    :goto_4
    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->e(Z)V

    .line 13
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c()V

    if-eqz v0, :cond_8

    if-eq v3, v4, :cond_7

    .line 15
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g()V

    .line 16
    :cond_7
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 17
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s()V

    .line 18
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_8
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f(F)V

    :cond_9
    :goto_5
    return-void
.end method

.method static P()V
    .locals 7

    .line 1
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->G0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->G0:J

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 3
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a()V

    .line 4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v0, v1, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(FFZLandroid/view/View;)V

    .line 5
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/d;->b()V

    .line 6
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(ZLandroid/view/ViewGroup;)V

    .line 7
    sget-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Z)V

    .line 8
    :cond_0
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 9
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    .line 10
    sget-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    .line 14
    const/4 v5, -0x1

    sput v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a0:I

    .line 15
    const/high16 v6, 0x7fc00000    # Float.NaN

    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b0:F

    .line 16
    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    .line 19
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    .line 20
    :cond_1
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    .line 23
    :cond_2
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    .line 26
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->c()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/f;->d()V

    .line 30
    :cond_3
    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Z)V

    .line 31
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f()V

    if-eqz v3, :cond_4

    .line 33
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 37
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    .line 38
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 39
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 44
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 45
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_5
    nop

    .line 49
    sput v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    return-void
.end method

.method private static Q()Z
    .locals 2

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static R()Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static S()Z
    .locals 2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-nez v1, :cond_0

    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static T()V
    .locals 3

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_2

    :goto_0
    return-void

    .line 6
    :cond_2
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    .line 7
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    const/4 v0, -0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    return-void
.end method

.method static synthetic a(F)F
    .locals 0

    .line 4
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->L:F

    return p0
.end method

.method private static a(Lbtm/m/os4/systemuihook/hypermusiccover/i;F)F
    .locals 9

    .line 128
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    .line 129
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x6

    const v3, 0x3a83126f    # 0.001f

    const v4, 0x3f7fbe77    # 0.999f

    const v5, 0x3bc49ba6    # 0.006f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    .line 130
    sput v7, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_1

    :cond_0
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_1

    .line 131
    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_1

    .line 132
    :cond_1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    add-float/2addr v0, v5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    sput v7, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_1

    .line 133
    :cond_2
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    sub-float/2addr v0, v5

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_1

    .line 134
    :cond_3
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    if-le v0, v2, :cond_5

    cmpg-float v0, p1, v1

    if-gez v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    move v0, v7

    .line 139
    :goto_0
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 149
    :cond_5
    :goto_1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9

    .line 150
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    cmpl-float v0, v0, v7

    const v8, 0x3d4ccccd    # 0.05f

    if-nez v0, :cond_6

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    sub-float/2addr v0, v8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_3

    .line 151
    :cond_6
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_7

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    add-float/2addr v0, v8

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    sput v7, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_3

    .line 152
    :cond_7
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_9

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    if-le v0, v2, :cond_9

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_8

    move v0, v7

    goto :goto_2

    :cond_8
    move v0, v6

    .line 162
    :goto_2
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_9

    .line 163
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 164
    const/4 p1, 0x0

    sput p1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    .line 165
    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    .line 166
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0

    .line 171
    :cond_9
    :goto_3
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 172
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0

    .line 181
    :cond_a
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c()Z

    move-result v1

    if-nez v1, :cond_c

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_b

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_b

    .line 183
    sput v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 184
    invoke-virtual {p0, v6}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    .line 185
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0

    :cond_b
    cmpl-float p1, p1, v4

    if-ltz p1, :cond_c

    cmpl-float p1, v0, v7

    if-eqz p1, :cond_c

    .line 188
    sput v7, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 189
    invoke-virtual {p0, v7}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    .line 190
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0

    .line 193
    :cond_c
    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    .line 194
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0
.end method

.method private static a(III)I
    .locals 0

    .line 1
    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private static a(Landroid/view/ViewGroup;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic a()Landroid/view/ViewGroup;
    .locals 1

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 195
    const-string p0, "?"

    return-object p0

    :cond_0
    nop

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 197
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    div-float v0, p0, p1

    .line 6
    :cond_0
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->u:F

    return-void
.end method

.method public static a(FFZZ)V
    .locals 3

    .line 7
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->O()V

    .line 8
    :cond_0
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v2, v1, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-nez v2, :cond_7

    iget-boolean v2, v1, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-eqz v2, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v1, p0, p1, v0, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FFFZ)F

    move-result p0

    .line 15
    invoke-static {p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->b(Z)V

    if-eqz p2, :cond_4

    .line 17
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 18
    invoke-virtual {v1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 19
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void

    :cond_4
    if-nez p3, :cond_5

    .line 24
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 25
    invoke-virtual {v1, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 26
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void

    .line 29
    :cond_5
    sget-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->t:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-eqz p1, :cond_6

    sget p1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v:F

    cmpl-float p1, p1, p0

    if-nez p1, :cond_6

    :goto_1
    return-void

    .line 30
    :cond_6
    sget p1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->u:F

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(FF)V

    return-void

    :cond_7
    :goto_2
    nop

    .line 31
    const/4 p2, 0x0

    invoke-virtual {v1, p0, p1, v0, p2}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FFFZ)F

    return-void
.end method

.method public static a(FZ)V
    .locals 2

    .line 32
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    .line 33
    invoke-virtual {v0, p0, p1}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(FZ)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez p0, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-boolean p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->d(Z)V

    .line 36
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 37
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    if-eqz v1, :cond_2

    .line 41
    iget-boolean p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-nez p0, :cond_2

    iget-boolean p0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b()F

    move-result p0

    iget p1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    .line 42
    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->b()F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(FF)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(J)V
    .locals 4

    .line 84
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f0:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i0:J

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j0:J

    .line 86
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f0:J

    .line 87
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g0:J

    add-long/2addr v0, p0

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g0:J

    .line 88
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h0:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    sput-wide p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h0:J

    :cond_1
    return-void
.end method

.method static a(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 73
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->w:Landroid/content/SharedPreferences;

    .line 74
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c(Landroid/content/SharedPreferences;)V

    .line 75
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 43
    const-string v0, "ios_notification_center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const-string v0, "ios_notification_wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const-string v0, "ios_notification_hide_clear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "ios_notification_header"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string v0, "ios_notification_clear_style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string v0, "ios_notification_clear_material"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    const-string v0, "ios_notification_clear_radius"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "ios_notification_clear_pure_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "ios_notification_clear_advanced_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "ios_notification_clear_advanced_opacity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const-string v0, "ios_notification_clear_advanced_blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string v0, "ios_notification_clear_advanced_highlight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string v0, "ios_notification_clear_soft_color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    const-string v0, "ios_notification_clear_soft_opacity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string v0, "ios_notification_clear_soft_backdrop_blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "ios_notification_clear_soft_blur"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const-string v0, "ios_notification_clear_soft_luminance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    const-string v0, "ios_notification_clear_soft_refraction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, "ios_notification_header_content_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "ios_notification_header_content_text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    const-string v0, "ios_notification_header_content_icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "ios_notification_header_builtin_icon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "ios_notification_header_icon_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v0, "ios_notification_header_text_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string v0, "ios_notification_header_icon_text_spacing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "ios_notification_shortcuts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "ios_notification_shortcuts_bottom_offset_dp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "ios_notification_bottom_offset_dp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string v0, "ios_notification_header_gap_dp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 72
    :cond_1
    :goto_0
    sget-object p1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b:Landroid/os/Handler;

    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda2;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 82
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    .line 83
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b:Landroid/os/Handler;

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static a(Landroid/view/MotionEvent;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    .line 106
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    if-nez p0, :cond_2

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->L()Z

    move-result p0

    sput-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    return-void

    :pswitch_1
    nop

    .line 110
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    .line 111
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    .line 115
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->k()V

    return-void

    :pswitch_2
    nop

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    .line 117
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    .line 118
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    .line 119
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->B0:F

    .line 125
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    const v2, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_1

    move v1, v0

    :cond_1
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D0:Z

    .line 126
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->C0:F

    return-void

    .line 106
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic a(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 76
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-ne v0, p0, :cond_1

    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz p0, :cond_1

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget p0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    sub-int/2addr p3, p1

    sub-int/2addr p7, p5

    if-ne p3, p7, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_1

    .line 79
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static a(Ljava/lang/Object;)V
    .locals 0

    .line 89
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->E0:Ljava/lang/Object;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 5
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Z)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .line 127
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b()F
    .locals 1

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n()F

    move-result v0

    return v0
.end method

.method static synthetic b(F)F
    .locals 0

    .line 2
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->N:F

    return p0
.end method

.method private static b(FF)V
    .locals 3

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 4
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 6
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void

    .line 9
    :cond_0
    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/i;

    new-instance v2, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/i;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/i$a;)V

    .line 13
    const/high16 v2, 0x43c80000    # 400.0f

    iput v2, v1, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b:F

    .line 15
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->t:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    .line 16
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v:F

    .line 17
    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    invoke-virtual {v1, v0, p0, p1}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(FFF)V

    return-void
.end method

.method private static synthetic b(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private static b(Landroid/view/ViewGroup;)V
    .locals 4

    .line 52
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->a(Landroid/content/Context;)V

    .line 56
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 58
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 59
    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 62
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 65
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e0:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 66
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 69
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    .line 80
    sput-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    .line 81
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/h$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 89
    invoke-static {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(Landroid/view/ViewGroup;)V

    .line 93
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/e;->c()V

    .line 96
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T()V

    .line 97
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_2

    .line 98
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s()V

    .line 99
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    .line 102
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MCShade] cover layer built for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " children)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MCShade] cover layer could not be built: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static b(Ljava/lang/Object;)V
    .locals 3

    .line 34
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    check-cast p0, Landroid/view/ViewGroup;

    .line 36
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-eq v0, p0, :cond_3

    .line 37
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->P()V

    .line 38
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Z)V

    .line 39
    :cond_1
    sput-boolean v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 40
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 41
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    nop

    .line 43
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    .line 44
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    .line 45
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    .line 46
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T:Landroid/view/View;

    .line 48
    :cond_3
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    .line 49
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->k0:[F

    .line 50
    const/4 v0, -0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h:I

    .line 51
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/h$a;

    invoke-direct {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h$a;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static b(Z)V
    .locals 2

    .line 18
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    .line 20
    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(Z)V

    if-eqz p0, :cond_1

    .line 22
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 23
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    .line 24
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->H()V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 29
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 30
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 31
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    .line 32
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->H()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static c(Landroid/view/ViewGroup;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 94
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g:Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 97
    :cond_0
    :try_start_0
    const-string v0, "com.android.systemui.shade.NotificationPanelView"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    .line 98
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MCShade] com.android.systemui.shade.NotificationPanelView not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c()V
    .locals 0

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T()V

    return-void
.end method

.method static synthetic c(F)V
    .locals 0

    .line 2
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d(F)V

    return-void
.end method

.method private static c(Landroid/content/SharedPreferences;)V
    .locals 28

    .line 18
    move-object/from16 v0, p0

    const-string v1, "ios_notification_center"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    const-string v3, "ios_notification_wallpaper"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/f;->a(I)I

    move-result v3

    .line 23
    const-string v4, "ios_notification_hide_clear"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 25
    invoke-static {v4}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->c(Z)V

    .line 27
    const-string v4, "ios_notification_header"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 28
    const-string v4, "ios_notification_clear_style"

    const/4 v6, 0x3

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 30
    const-string v4, "ios_notification_clear_material"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 31
    const-string v4, "ios_notification_clear_radius"

    const/high16 v8, 0x41b00000    # 22.0f

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v8

    .line 32
    const-string v4, "ios_notification_clear_pure_color"

    const v9, 0x66ffffff

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 33
    const-string v4, "ios_notification_clear_advanced_color"

    const/4 v10, -0x1

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 34
    const-string v11, "ios_notification_clear_advanced_opacity"

    const/16 v12, 0xe

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 35
    const-string v12, "ios_notification_clear_advanced_blur"

    const/16 v13, 0x24

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 36
    const-string v14, "ios_notification_clear_advanced_highlight"

    invoke-interface {v0, v14, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 37
    const-string v15, "ios_notification_clear_soft_color"

    invoke-interface {v0, v15, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 38
    const-string v15, "ios_notification_clear_soft_opacity"

    const/16 v2, 0xa

    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 39
    const-string v2, "ios_notification_clear_soft_backdrop_blur"

    const/16 v13, 0x50

    invoke-interface {v0, v2, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 40
    const-string v13, "ios_notification_clear_soft_blur"

    move/from16 v27, v1

    const/16 v1, 0x24

    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 41
    const-string v1, "ios_notification_clear_soft_luminance"

    const v13, 0x3e0f5c29    # 0.14f

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v18

    .line 42
    const-string v1, "ios_notification_clear_soft_refraction"

    const/4 v13, 0x0

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 43
    const-string v1, "ios_notification_header_content_mode"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 44
    const-string v1, "ios_notification_header_content_text"

    const-string v13, ""

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 45
    const-string v1, "ios_notification_header_content_icon"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 46
    const-string v1, "ios_notification_header_builtin_icon"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 47
    const-string v1, "ios_notification_header_icon_scale"

    const/16 v13, 0x64

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 48
    const-string v1, "ios_notification_header_text_scale"

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v25

    .line 49
    const-string v1, "ios_notification_header_icon_text_spacing"

    const/16 v13, 0x8

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 50
    move/from16 v16, v2

    move v13, v14

    move v14, v10

    move v10, v4

    invoke-static/range {v5 .. v26}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(ZIIFIIIIZIIIIFIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 75
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/l;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    .line 76
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/l;->b(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 77
    invoke-static {v1, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(ZI)V

    .line 82
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/c;->a(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 83
    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->b(I)V

    .line 87
    const-string v1, "ios_notification_header_gap_dp"

    const/4 v13, 0x0

    invoke-interface {v0, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    invoke-static {v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->c(I)V

    .line 91
    sput-boolean v27, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n:Z

    .line 92
    sput v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->o:I

    .line 93
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->O()V

    return-void
.end method

.method public static c(Z)V
    .locals 2

    .line 3
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_2

    .line 5
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 8
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    .line 9
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->H()V

    return-void

    .line 12
    :cond_2
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v0, p0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    .line 13
    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->c()V

    .line 14
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 15
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l()V

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 17
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static d(F)V
    .locals 5

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    .line 3
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    .line 12
    sget-boolean v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    neg-int v2, v0

    int-to-float v2, v2

    sub-float/2addr v3, p0

    mul-float/2addr v2, v3

    .line 16
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 17
    :cond_2
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    .line 18
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    .line 19
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 21
    :cond_3
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_6

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void

    :cond_4
    int-to-float v0, v0

    mul-float v2, v0, p0

    float-to-int v2, v2

    .line 31
    sget v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a0:I

    if-eq v2, v4, :cond_5

    .line 32
    sput v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a0:I

    int-to-float v2, v2

    .line 33
    sput v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    .line 34
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidateOutline()V

    :cond_5
    const v1, -0x420a3d71    # -0.12f

    mul-float/2addr v0, v1

    sub-float/2addr v3, p0

    mul-float/2addr v0, v3

    .line 40
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    .line 41
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b0:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    .line 42
    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->b0:F

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    return v0
.end method

.method static synthetic e()V
    .locals 0

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void
.end method

.method private static e(F)V
    .locals 2

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float/2addr v1, p0

    const/high16 p0, 0x41c00000    # 24.0f

    :goto_0
    mul-float/2addr v1, p0

    float-to-int p0, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const v0, 0x3f333333    # 0.7f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    const/16 p0, 0x50

    goto :goto_1

    :cond_2
    sub-float/2addr v1, p0

    const p0, 0x3e99999a    # 0.3f

    div-float/2addr v1, p0

    const/high16 p0, 0x42a00000    # 80.0f

    goto :goto_0

    .line 11
    :goto_1
    div-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x4

    .line 12
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    if-ne p0, v0, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    .line 14
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    :goto_2
    return-void

    :cond_4
    if-lez p0, :cond_5

    int-to-float p0, p0

    .line 17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p0, p0, v1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    .line 18
    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    return-void
.end method

.method static synthetic f()F
    .locals 1

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->N:F

    return v0
.end method

.method private static f(F)V
    .locals 7

    .line 2
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 12
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    if-eqz p0, :cond_2

    invoke-static {v3}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Z)V

    .line 16
    :cond_2
    invoke-static {v3}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Z)V

    .line 17
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f()V

    .line 18
    sput-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v2, :cond_3

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->P()V

    :cond_3
    :goto_0
    return-void

    .line 26
    :cond_4
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->t()V

    .line 30
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m(F)F

    move-result v1

    .line 43
    sget-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const v6, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, v6

    if-gtz p0, :cond_6

    .line 44
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    if-nez p0, :cond_6

    if-nez v4, :cond_6

    move p0, v5

    goto :goto_2

    :cond_6
    move p0, v3

    :goto_2
    const v4, 0x3d3851ec    # 0.045f

    cmpl-float v6, v1, v4

    if-lez v6, :cond_7

    if-nez p0, :cond_7

    move p0, v5

    goto :goto_3

    :cond_7
    move p0, v3

    .line 52
    :goto_3
    sget-boolean v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    if-eq p0, v6, :cond_b

    if-eqz p0, :cond_8

    .line 53
    sget-boolean v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v6, :cond_8

    move v6, v5

    goto :goto_4

    :cond_8
    move v6, v3

    :goto_4
    invoke-static {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->b(Z)V

    if-eqz p0, :cond_9

    .line 58
    sget-boolean v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v6, :cond_9

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_5

    :cond_9
    move v6, v3

    :goto_5
    invoke-static {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->c(Z)V

    if-eqz p0, :cond_a

    .line 61
    sget-boolean v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v5, v3

    :goto_6
    invoke-static {v5}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Z)V

    if-nez p0, :cond_b

    .line 64
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->E()V

    .line 66
    :cond_b
    sput-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_e

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eq p0, v2, :cond_d

    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 79
    const/high16 p0, 0x7fc00000    # Float.NaN

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    .line 80
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 81
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz p0, :cond_c

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 82
    :cond_c
    const/4 p0, -0x1

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    .line 84
    :cond_d
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    return-void

    .line 90
    :cond_e
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_f

    .line 95
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s()V

    .line 99
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T()V

    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 104
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g(F)F

    move-result v2

    invoke-virtual {p0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c(F)V

    .line 106
    :cond_f
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz p0, :cond_10

    :goto_7
    goto :goto_8

    :cond_10
    const p0, 0x3f333333    # 0.7f

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_11

    goto :goto_7

    :goto_8
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_11
    sub-float p0, v1, v4

    const v2, 0x3f27ae14    # 0.655f

    div-float/2addr p0, v2

    .line 108
    :goto_9
    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    cmpl-float v2, p0, v2

    if-eqz v2, :cond_12

    .line 109
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    .line 110
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 112
    :cond_12
    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e(F)V

    .line 131
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    invoke-virtual {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d(F)V

    goto :goto_a

    .line 132
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_14

    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 138
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 147
    :cond_14
    :goto_a
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    return-void
.end method

.method static synthetic g()F
    .locals 1

    .line 2
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    return v0
.end method

.method private static g(F)F
    .locals 2

    .line 1
    const v0, 0x3f266666    # 0.65f

    cmpl-float v1, p0, v0

    if-ltz v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    div-float/2addr p0, v0

    return p0
.end method

.method private static h(F)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method static synthetic h()[F
    .locals 1

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m()[F

    move-result-object v0

    return-object v0
.end method

.method private static i(F)Ljava/lang/String;
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    .line 38
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i()V
    .locals 7

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-nez v1, :cond_8

    iget v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_8

    iget v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_8

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->s()V

    .line 7
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->T()V

    .line 8
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A()Z

    move-result v1

    .line 9
    invoke-static {v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->e(Z)V

    .line 10
    iget v2, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    iget v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->h:F

    mul-float/2addr v2, v3

    mul-float v3, v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    const/high16 v5, 0x40400000    # 3.0f

    sub-float/2addr v5, v4

    mul-float/2addr v3, v5

    .line 13
    sget-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 14
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 16
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->B()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    const v5, 0x3f8f5c29    # 1.12f

    goto :goto_0

    :cond_2
    move v5, v4

    .line 21
    :goto_0
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 22
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleX()F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_3

    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 23
    :cond_3
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleY()F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_4

    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 25
    :cond_4
    sget-object v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    if-eqz v3, :cond_5

    sub-float/2addr v4, v2

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v4, v3

    const/high16 v3, 0x41b00000    # 22.0f

    add-float/2addr v4, v3

    mul-float/2addr v4, v5

    .line 27
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_1

    :cond_5
    const/high16 v3, 0x41e00000    # 28.0f

    mul-float/2addr v5, v3

    sub-float/2addr v4, v2

    mul-float/2addr v5, v4

    .line 28
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 29
    :goto_1
    sget-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    sget v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    if-eq v4, v3, :cond_7

    .line 30
    sget-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-nez v3, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    int-to-float v5, v3

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {v5, v5, v6}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 32
    sput v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    .line 34
    :cond_7
    iget v3, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    invoke-static {v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d(F)V

    .line 35
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(ZLandroid/view/ViewGroup;)V

    .line 36
    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(FFZLandroid/view/View;)V

    return-void

    .line 37
    :cond_8
    :goto_3
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->v()V

    return-void
.end method

.method private static j()Landroid/graphics/Bitmap;
    .locals 3

    .line 3
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g()V

    .line 6
    :cond_1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static synthetic j(F)V
    .locals 1

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 2
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    return-void
.end method

.method private static k()V
    .locals 3

    .line 22
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-nez v0, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l(F)V

    .line 25
    const/4 v1, 0x0

    sput v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    .line 42
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    const v2, 0x3f7fbe77    # 0.999f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    goto :goto_0

    .line 43
    :cond_1
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    sput v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 44
    :cond_2
    :goto_0
    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-virtual {v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method static k(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v1

    if-lez v2, :cond_1

    move p0, v1

    :cond_1
    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->O()V

    .line 2
    :cond_2
    sget-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->O:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->O:J

    .line 5
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->x0:F

    .line 6
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_4

    .line 7
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r:Z

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->a(F)V

    .line 9
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i()V

    :cond_3
    return-void

    .line 14
    :cond_4
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->P:Z

    if-nez v0, :cond_5

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->P:Z

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MCShade] expansion driver is live - first frame f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    .line 19
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 20
    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f(F)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(J)V

    return-void
.end method

.method private static l()V
    .locals 2

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->t:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    .line 2
    const/4 v1, 0x0

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->t:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    .line 3
    const/4 v1, 0x0

    sput v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->u:F

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->d()V

    :cond_0
    return-void
.end method

.method private static l(F)V
    .locals 1

    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    .line 6
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->o0:F

    .line 7
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    .line 8
    const/high16 p0, 0x7fc00000    # Float.NaN

    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    return-void
.end method

.method private static m(F)F
    .locals 4

    .line 28
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-nez v0, :cond_0

    return p0

    .line 30
    :cond_0
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v1, :cond_8

    .line 37
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    if-eqz v1, :cond_4

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_2

    .line 38
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    const-string v1, "hold"

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    .line 45
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l(F)V

    .line 46
    :cond_1
    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Lbtm/m/os4/systemuihook/hypermusiccover/i;F)F

    move-result p0

    return p0

    .line 50
    :cond_2
    const-string v1, "glue"

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    .line 51
    const/4 v1, 0x0

    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    .line 65
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->u()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    sub-float/2addr p0, v2

    cmpg-float v2, v1, p0

    if-gez v2, :cond_3

    move v1, p0

    .line 76
    :cond_3
    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h(F)F

    move-result p0

    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c(F)V

    .line 77
    invoke-virtual {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result p0

    return p0

    .line 79
    :cond_4
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    if-eqz v1, :cond_6

    .line 88
    const-string v1, "idle"

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    .line 89
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    if-nez v1, :cond_5

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l(F)V

    .line 90
    :cond_5
    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Lbtm/m/os4/systemuihook/hypermusiccover/i;F)F

    move-result p0

    return p0

    .line 92
    :cond_6
    const-string v1, "release"

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    .line 93
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    if-nez v1, :cond_7

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l(F)V

    .line 94
    :cond_7
    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Lbtm/m/os4/systemuihook/hypermusiccover/i;F)F

    move-result p0

    return p0

    .line 95
    :cond_8
    const-string v1, "panel"

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c(F)V

    return p0
.end method

.method private static m()[F
    .locals 12

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 3
    :goto_0
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->k0:[F

    if-eqz v3, :cond_1

    .line 4
    sget v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l0:I

    if-ne v2, v4, :cond_1

    return-object v3

    :cond_1
    nop

    .line 5
    const/4 v3, 0x4

    new-array v4, v3, [F

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    .line 7
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v8

    :goto_1
    nop

    .line 8
    filled-new-array {v1, v7, v6, v5}, [I

    move-result-object v9

    move v10, v1

    :goto_2
    if-ge v10, v3, :cond_4

    if-eqz v8, :cond_4

    .line 13
    aget v11, v9, v10

    invoke-virtual {v8, v11}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 14
    invoke-virtual {v11}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v11

    int-to-float v11, v11

    aput v11, v4, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catchall_0
    move-exception v8

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MCShade] no corner radius from the insets, the curtain line will run to the screen edge: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_4
    nop

    .line 20
    aget v8, v4, v1

    aget v9, v4, v7

    add-float/2addr v8, v9

    aget v9, v4, v6

    add-float/2addr v8, v9

    aget v9, v4, v5

    add-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_6

    if-nez v0, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41e00000    # 28.0f

    mul-float v9, v0, v2

    :goto_3
    nop

    .line 23
    new-array v0, v3, [F

    aput v9, v0, v1

    aput v9, v0, v7

    aput v9, v0, v6

    aput v9, v0, v5

    return-object v0

    .line 25
    :cond_6
    sput-object v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->k0:[F

    .line 26
    sput v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l0:I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MCShade] display corner radii = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v4, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v4, v7

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v4, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v4, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-object v4
.end method

.method private static n()F
    .locals 4

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m()[F

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static o()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    .line 2
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "root="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "null"

    const-string v4, "/"

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 4
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " frame="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_1

    .line 7
    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alpha="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " line="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d0:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " panel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->g:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "unresolved"

    goto :goto_2

    :cond_2
    const-string v2, "resolved"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " push="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pushNow="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hdr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " sbias="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pic="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    const-string v3, "none"

    goto :goto_3

    .line 20
    :cond_3
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    sget-object v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->j:Landroid/graphics/Bitmap;

    if-ne v3, v5, :cond_4

    const-string v3, "cover"

    goto :goto_3

    .line 21
    :cond_4
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R:Landroid/graphics/Bitmap;

    sget-object v5, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    if-ne v3, v5, :cond_5

    const-string v3, "wallpaper"

    goto :goto_3

    :cond_5
    const-string v3, "stale"

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " cur="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " touch="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    sget-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    if-eqz v3, :cond_6

    const-string v3, "gesture"

    goto :goto_4

    :cond_6
    sget-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    if-eqz v3, :cond_7

    const-string v3, "down"

    goto :goto_4

    :cond_7
    const-string v3, "up"

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " T/G="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->y0:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->z0:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " src="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->F0:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " spr="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    const-string v5, "?"

    if-nez v3, :cond_8

    move-object v3, v5

    goto :goto_6

    .line 34
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    .line 35
    invoke-virtual {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->e()F

    move-result v6

    invoke-static {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 36
    sget-object v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    invoke-virtual {v6}, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "run"

    goto :goto_5

    :cond_9
    const-string v6, "stop"

    :goto_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tgt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    .line 37
    invoke-static {v3}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " relF="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r0:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " rst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v6, Lbtm/m/os4/systemuihook/hypermusiccover/h;->G0:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " wh="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    if-nez v1, :cond_a

    .line 44
    move-object v6, v5

    goto :goto_7

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " at="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " drw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-nez v1, :cond_b

    move-object v1, v5

    goto :goto_8

    :cond_b
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    :cond_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wpwh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-nez v1, :cond_d

    move-object v1, v5

    goto :goto_9

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->n0:Z

    if-eqz v1, :cond_f

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->o0:F

    .line 53
    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p0:F

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_a

    :cond_e
    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q0:F

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i(F)Ljava/lang/String;

    move-result-object v5

    :goto_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 55
    :cond_f
    const-string v1, "off"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " blurNow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->L:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static p()Z
    .locals 2

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->B0:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41c00000    # 24.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static q()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static r()Z
    .locals 4

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_4

    .line 4
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->p:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    return v3

    .line 6
    :cond_2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/c;->g()V

    .line 7
    :cond_3
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->Q:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    return v1
.end method

.method private static s()V
    .locals 6

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    .line 2
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c(Landroid/view/ViewGroup;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    sput v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h:I

    return-void

    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v3, -0x1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {v0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->a(Landroid/view/ViewGroup;Ljava/lang/Class;)I

    move-result v2

    :goto_0
    if-gez v2, :cond_4

    .line 28
    sget-boolean v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i:Z

    if-nez v4, :cond_4

    .line 29
    const/4 v4, 0x1

    sput-boolean v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->i:Z

    .line 30
    const-string v4, "[MCShade] no com.android.systemui.shade.NotificationPanelView under the shade root - the cover layer falls back to index 0, where MIUI\'s own scrims paint over it. The expected symptom is that pulling the shade shows no cover at all, at every mode."

    invoke-static {v4}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_4
    if-gez v2, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    .line 36
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 37
    :goto_1
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 39
    sput v4, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h:I

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MCShade] cover layer at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " children, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-gez v2, :cond_6

    .line 41
    const-string v1, "NOT anchored to the panel"

    goto :goto_2

    .line 42
    :cond_6
    const-string v1, "below the panel"

    .line 41
    :goto_2
    nop

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MCShade] cover layer could not be placed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static t()V
    .locals 3

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;

    new-instance v1, Lbtm/m/os4/systemuihook/hypermusiccover/h$c;

    invoke-direct {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/h$c;-><init>()V

    invoke-direct {v0, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/i;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/i$a;)V

    .line 22
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    .line 23
    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b:F

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c:F

    .line 25
    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->J:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    .line 27
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;

    new-instance v2, Lbtm/m/os4/systemuihook/hypermusiccover/h$d;

    invoke-direct {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/h$d;-><init>()V

    invoke-direct {v0, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/i;-><init>(Lbtm/m/os4/systemuihook/hypermusiccover/i$a;)V

    .line 33
    const/high16 v2, 0x43480000    # 200.0f

    iput v2, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->a:F

    .line 34
    iput v1, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->b:F

    .line 35
    iput v1, v0, Lbtm/m/os4/systemuihook/hypermusiccover/i;->c:F

    .line 36
    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->K:Lbtm/m/os4/systemuihook/hypermusiccover/i;

    return-void
.end method

.method private static u()F
    .locals 4

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    .line 4
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m0:F

    return v0

    :cond_1
    nop

    .line 5
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D0:Z

    if-eqz v0, :cond_2

    .line 8
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_2
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->C0:F

    sget v2, Lbtm/m/os4/systemuihook/hypermusiccover/h;->A0:F

    sget v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->B0:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 10
    :goto_0
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->h(F)F

    move-result v0

    return v0
.end method

.method private static v()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->l:Z

    .line 2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v1, v0, v2}, Lbtm/m/os4/systemuihook/newnotificationcenter/e;->a(FFZLandroid/view/View;)V

    .line 3
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v3}, Lbtm/m/os4/systemuihook/newnotificationcenter/n;->a(ZLandroid/view/ViewGroup;)V

    .line 4
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 9
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 10
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 12
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 13
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 14
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 15
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 16
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_1
    nop

    .line 19
    const/4 v0, -0x1

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->D:I

    .line 20
    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->c0:F

    .line 21
    invoke-static {}, Lbtm/m/os4/systemuihook/newnotificationcenter/d;->b()V

    return-void
.end method

.method public static w()Z
    .locals 1

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    return v0
.end method

.method public static x()Z
    .locals 2

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-nez v1, :cond_0

    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static y()F
    .locals 1

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static z()F
    .locals 2

    .line 1
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/h;->q:Lbtm/m/os4/systemuihook/newnotificationcenter/o;

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->g:Z

    if-nez v1, :cond_0

    iget v0, v0, Lbtm/m/os4/systemuihook/newnotificationcenter/o;->e:F

    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method
