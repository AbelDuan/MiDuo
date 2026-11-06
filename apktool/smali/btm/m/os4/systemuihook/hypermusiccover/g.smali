.class final Lbtm/m/os4/systemuihook/hypermusiccover/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "[MCHeader] "

.field private static final b:Ljava/lang/String; = "normal_notification_header_view"

.field private static final c:Ljava/lang/String; = "big_time"

.field private static final d:Ljava/lang/String; = "date_time"

.field private static final e:Ljava/lang/String; = "carrier_container"

.field private static volatile f:I = 0x0

.field private static volatile g:I = 0x0

.field private static volatile h:Landroid/view/View; = null

.field private static volatile i:Landroid/view/View; = null

.field private static volatile j:Landroid/view/View; = null

.field private static volatile k:Landroid/view/ViewTreeObserver; = null

.field private static volatile l:Z = false

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:[I

.field private static final q:[F

.field private static volatile r:Z

.field private static final s:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->p:[I

    .line 3
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->q:[F

    .line 124
    new-instance v0, Lbtm/m/os4/systemuihook/hypermusiccover/g$a;

    invoke-direct {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/g$a;-><init>()V

    sput-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->s:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
        0x7fc00000    # Float.NaN
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 88
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "com.android.systemui"

    .line 89
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 90
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    return-object v0
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 91
    const-string p0, "-"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->b()V

    return-void
.end method

.method static a(I)V
    .locals 0

    .line 2
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    return-void
.end method

.method private static a(ILandroid/view/View;IZ)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 53
    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->p:[I

    aget v2, v1, p0

    if-eqz p3, :cond_1

    int-to-float p2, v2

    sub-float p2, v0, p2

    .line 60
    const/4 p3, 0x0

    aput p3, v1, p0

    .line 61
    sget-object p3, Lbtm/m/os4/systemuihook/hypermusiccover/g;->q:[F

    const/high16 v1, 0x7fc00000    # Float.NaN

    aput v1, p3, p0

    goto :goto_1

    .line 62
    :cond_1
    sget-object p3, Lbtm/m/os4/systemuihook/hypermusiccover/g;->q:[F

    aget v3, p3, p0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_3

    if-ne v2, p2, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v2, v2

    sub-float v2, v0, v2

    int-to-float v3, p2

    add-float/2addr v2, v3

    .line 69
    aput p2, v1, p0

    .line 70
    aput v2, p3, p0

    move p2, v2

    goto :goto_0

    :cond_3
    int-to-float v2, p2

    add-float/2addr v2, v0

    .line 82
    aput p2, v1, p0

    .line 83
    aput v2, p3, p0

    move p2, v2

    .line 70
    :goto_0
    nop

    .line 83
    :goto_1
    cmpl-float p0, p2, v0

    if-eqz p0, :cond_4

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[MCHeader] could not hold a header view: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method static a(Z)V
    .locals 5

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f()V

    return-void

    .line 6
    :cond_0
    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    if-nez p0, :cond_1

    sget p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    if-nez p0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/h;->R()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    const-string v0, "normal_notification_header_view"

    invoke-static {p0, v0}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 12
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->r:Z

    if-nez v0, :cond_3

    .line 13
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->r:Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MCHeader] no normal_notification_header_view under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " - there is nothing for the header offsets to move on this build"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 22
    :cond_4
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    .line 23
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    invoke-static {v2, p0, v2, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 24
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    invoke-static {v1, p0, v2, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 25
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    const/4 v3, 0x2

    invoke-static {v3, p0, v2, v1}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 26
    sput-boolean v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    .line 30
    :cond_5
    const-string p0, "big_time"

    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    .line 31
    const-string p0, "date_time"

    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    .line 32
    const-string p0, "carrier_container"

    invoke-static {v0, p0}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    .line 33
    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    if-nez p0, :cond_6

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    if-nez p0, :cond_6

    sget-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    if-nez p0, :cond_6

    .line 34
    const-string p0, "[MCHeader] none of big_time / date_time / carrier_container found inside the header - nothing to move"

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    move p0, v2

    :goto_1
    const/4 v3, 0x3

    if-ge p0, v3, :cond_7

    .line 39
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/g;->p:[I

    aput v2, v3, p0

    .line 40
    sget-object v3, Lbtm/m/os4/systemuihook/hypermusiccover/g;->q:[F

    const/high16 v4, 0x7fc00000    # Float.NaN

    aput v4, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 42
    :cond_7
    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->b(Landroid/view/View;)V

    .line 43
    sget-boolean p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    if-nez p0, :cond_b

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[MCHeader] header armed: clock="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " date="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_3

    :cond_9
    move v0, v2

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " carriers="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    if-eqz v0, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " shift="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    :cond_b
    nop

    .line 48
    sput-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    .line 51
    invoke-static {}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->b()V

    return-void
.end method

.method private static b()V
    .locals 4

    .line 7
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 9
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 10
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    const/4 v3, 0x2

    invoke-static {v3, v0, v1, v2}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    return-void
.end method

.method static b(I)V
    .locals 0

    .line 1
    sput p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    return-void
.end method

.method private static b(Landroid/view/View;)V
    .locals 1

    .line 2
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->k:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->k:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 5
    :cond_1
    sput-object p0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->k:Landroid/view/ViewTreeObserver;

    .line 6
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->s:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method static c()I
    .locals 1

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    return v0
.end method

.method static d()I
    .locals 1

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    return v0
.end method

.method static e()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    if-nez v0, :cond_0

    sget v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    if-nez v0, :cond_0

    const-string v0, "off"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    if-eqz v1, :cond_1

    const-string v1, "armed"

    goto :goto_0

    :cond_1
    const-string v1, "idle"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    .line 4
    invoke-static {v1}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    invoke-static {v2}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " added="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->p:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f()V
    .locals 5

    .line 1
    sget-object v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->k:Landroid/view/ViewTreeObserver;

    .line 2
    const/4 v1, 0x0

    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->k:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->s:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :cond_0
    :goto_0
    sget-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lbtm/m/os4/systemuihook/hypermusiccover/g;->l:Z

    .line 13
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v0, v2, v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 14
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    invoke-static {v3, v2, v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 15
    sget-object v2, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    const/4 v4, 0x2

    invoke-static {v4, v2, v0, v3}, Lbtm/m/os4/systemuihook/hypermusiccover/g;->a(ILandroid/view/View;IZ)V

    .line 16
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->h:Landroid/view/View;

    .line 17
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->i:Landroid/view/View;

    .line 18
    sput-object v1, Lbtm/m/os4/systemuihook/hypermusiccover/g;->j:Landroid/view/View;

    .line 19
    const-string v0, "[MCHeader] header released"

    invoke-static {v0}, Lbtm/m/os4/systemuihook/hypermusiccover/j;->a(Ljava/lang/String;)V

    return-void
.end method
