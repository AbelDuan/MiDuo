.class final Ldev/duo/hookprobe/T$f;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/T$f$b;
    }
.end annotation


# static fields
.field static final n:F = 48.6f

.field static final o:F = 98.0f

.field static final p:F = 146.0f

.field private static final q:F = 29.986198f

.field private static final r:F = 64.400604f

.field private static final s:F = 8.067599f

.field private static final t:F = 6.804f

.field private static final u:F = 6.804f

.field private static final v:F = 31.0f

.field private static final w:F = 149.0f

.field private static final x:[F

.field private static final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:I

.field private c:Z

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Path;

.field private final k:Landroid/content/BroadcastReceiver;

.field private l:Ldev/duo/hookprobe/T$f$b;

.field private m:Z


# direct methods
.method public static synthetic $r8$lambda$TN6oTslo9pGGErLaLeQLWBnMYHs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/T$f;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Ldev/duo/hookprobe/T$f;->x:[F

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldev/duo/hookprobe/T$f;->y:Ljava/util/Map;

    return-void

    :array_0
    .array-data 4
        0x42f20000    # 121.0f
        0x42cb0000    # 101.5f
        0x42a00000    # 80.0f
        0x426c0000    # 59.0f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ldev/duo/hookprobe/T$f;->a:F

    .line 3
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/hookprobe/T$f;->b:I

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/T$f;->d:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/T$f;->e:Landroid/graphics/Path;

    .line 7
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/T$f;->f:Landroid/graphics/Matrix;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    .line 12
    new-instance v0, Ldev/duo/hookprobe/T$f$a;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/T$f$a;-><init>(Ldev/duo/hookprobe/T$f;)V

    iput-object v0, p0, Ldev/duo/hookprobe/T$f;->k:Landroid/content/BroadcastReceiver;

    .line 33
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 35
    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 37
    const-string p1, "\u65f6\u95f4\u3001\u7535\u91cf\u4e0e\u7f51\u7edc"

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/T$f;F)F
    .locals 0

    .line 1
    iput p1, p0, Ldev/duo/hookprobe/T$f;->a:F

    return p1
.end method

.method static synthetic a(Landroid/telephony/SignalStrength;)I
    .locals 0

    .line 3
    invoke-static {p0}, Ldev/duo/hookprobe/T$f;->b(Landroid/telephony/SignalStrength;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/T$f;I)I
    .locals 0

    .line 2
    iput p1, p0, Ldev/duo/hookprobe/T$f;->b:I

    return p1
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 24
    const-string v0, "getMiuiLevel"

    const-string v1, "getMiuiSignalLevel"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    .line 25
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_2

    .line 29
    const-string v2, "mMiuiLevel"

    const-string v4, "miuiLevel"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 31
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 32
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    move-exception v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 33
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method private a()V
    .locals 3

    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/T$f;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 16
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {v1}, Ldev/duo/hookprobe/T$f;->b(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Ldev/duo/hookprobe/T$f;->b:I

    .line 18
    :cond_0
    new-instance v1, Ldev/duo/hookprobe/T$f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldev/duo/hookprobe/T$f$b;-><init>(Ldev/duo/hookprobe/T$f;Ldev/duo/hookprobe/T$a;)V

    iput-object v1, p0, Ldev/duo/hookprobe/T$f;->l:Ldev/duo/hookprobe/T$f$b;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/T$f;->l:Ldev/duo/hookprobe/T$f$b;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "MiDuoUi"

    const-string v2, "signal level unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Ldev/duo/hookprobe/T$f;->m:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Ldev/duo/hookprobe/T$f;->m:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-direct {p0}, Ldev/duo/hookprobe/T$f;->a()V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Ldev/duo/hookprobe/T$f;->b()V

    return-void
.end method

.method private static b(Landroid/telephony/SignalStrength;)I
    .locals 8

    .line 9
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellSignalStrength;

    .line 10
    sget-object v4, Ldev/duo/hookprobe/T$f;->y:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ldev/duo/hookprobe/T$f$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ldev/duo/hookprobe/T$f$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    :try_start_0
    instance-of v5, v4, Ljava/lang/reflect/Method;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    .line 14
    :cond_0
    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    .line 16
    sget-object v5, Ldev/duo/hookprobe/T$f;->y:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUI signal level read failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiDuoUi"

    invoke-static {v6, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v4, v1

    :goto_2
    if-gez v4, :cond_2

    .line 19
    invoke-virtual {v3}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v4

    .line 20
    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x4

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_3
    return p0
.end method

.method private b()V
    .locals 2

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/hookprobe/T$f;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v0, "MiDuoUi"

    const-string v1, "status receiver was not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object v0, p0, Ldev/duo/hookprobe/T$f;->l:Ldev/duo/hookprobe/T$f$b;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Ldev/duo/hookprobe/T$f;->l:Ldev/duo/hookprobe/T$f$b;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/hookprobe/T$f;->l:Ldev/duo/hookprobe/T$f$b;

    :cond_0
    return-void
.end method


# virtual methods
.method b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/T$f;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Ldev/duo/hookprobe/T$f;->c:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/T$f;->a(Z)V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v7, Ldev/duo/hookprobe/T;->b:I

    const v2, 0xffffff

    and-int/2addr v2, v7

    const/high16 v3, 0x4d000000    # 1.34217728E8f

    or-int v8, v2, v3

    .line 3
    iget-object v2, v0, Ldev/duo/hookprobe/T$f;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 5
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    const-string v4, ":0"

    goto :goto_0

    :cond_0
    const-string v4, ":"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7
    iget-boolean v11, v0, Ldev/duo/hookprobe/T$f;->c:Z

    const v2, 0x40d9ba5e    # 6.804f

    if-eqz v11, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const v3, 0x410114e3

    .line 8
    :goto_1
    iget-object v14, v0, Ldev/duo/hookprobe/T$f;->e:Landroid/graphics/Path;

    iget-object v15, v0, Ldev/duo/hookprobe/T$f;->f:Landroid/graphics/Matrix;

    const v10, 0x41efe3bc

    const v13, 0x4280cd1c

    const/high16 v12, 0x42c40000    # 98.0f

    invoke-static/range {v9 .. v15}, Ldev/duo/workspaceprobe/h;->a(Ljava/lang/String;FZFFLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 9
    iget-object v4, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object v4, v0, Ldev/duo/hookprobe/T$f;->e:Landroid/graphics/Path;

    iget-object v5, v0, Ldev/duo/hookprobe/T$f;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 11
    iget-object v4, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    const v5, 0x4312999a    # 146.6f

    const v6, 0x4342999a    # 194.6f

    const v9, 0x4245999a    # 49.4f

    const v10, 0x42c2cccd    # 97.4f

    invoke-virtual {v4, v9, v10, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v4, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    move v4, v2

    iget-object v2, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    iget-object v6, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    move v5, v4

    const/high16 v4, 0x43720000    # 242.0f

    move v9, v5

    const/4 v5, 0x0

    move v10, v3

    const/high16 v3, 0x43150000    # 149.0f

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v2, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    iget v1, v0, Ldev/duo/hookprobe/T$f;->a:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3cf5c28f    # 0.03f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v3, 0x43720000    # 242.0f

    mul-float v4, v1, v3

    iget-object v6, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    const/high16 v3, 0x43150000    # 149.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 18
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 19
    const/4 v9, 0x2

    new-array v11, v9, [F

    fill-array-data v11, :array_0

    const/4 v13, 0x0

    move v14, v13

    :goto_2
    const v1, 0x432477cf

    if-ge v14, v9, :cond_2

    aget v2, v11, v14

    .line 20
    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    sub-float v4, v12, v2

    sub-float v5, v1, v2

    add-float v6, v12, v2

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 21
    iget-object v2, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    iget-object v6, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    const/high16 v4, 0x42a80000    # 84.0f

    const/4 v5, 0x0

    const/high16 v3, 0x43640000    # 228.0f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object v2, v1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 23
    :cond_2
    move-object/from16 v2, p1

    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 26
    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    const v3, 0x42d48625

    const v4, 0x432cbae1    # 172.73f

    const v5, 0x42b379db

    const v6, 0x431c34bd

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->i:Landroid/graphics/RectF;

    const/high16 v4, 0x43640000    # 228.0f

    const/high16 v5, 0x42a80000    # 84.0f

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 29
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 30
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    const v3, 0x401b851f    # 2.43f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->j:Landroid/graphics/Path;

    iget-object v3, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    :goto_3
    sget-object v1, Ldev/duo/hookprobe/T$f;->x:[F

    array-length v3, v1

    if-ge v13, v3, :cond_4

    .line 35
    aget v1, v1, v13

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 36
    iget-object v1, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    iget v5, v0, Ldev/duo/hookprobe/T$f;->b:I

    if-ge v13, v5, :cond_3

    move v5, v7

    goto :goto_4

    :cond_3
    move v5, v8

    :goto_4
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v1, v5

    const v5, 0x42426666    # 48.6f

    mul-float/2addr v1, v5

    add-float/2addr v1, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v5, v3

    const/high16 v3, 0x43120000    # 146.0f

    add-float/2addr v3, v5

    iget-object v4, v0, Ldev/duo/hookprobe/T$f;->h:Landroid/graphics/Paint;

    const v5, 0x40a34bc6    # 5.1029997f

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x41e56459
        0x4193be76
    .end array-data
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/T$f;->a(Z)V

    return-void
.end method
