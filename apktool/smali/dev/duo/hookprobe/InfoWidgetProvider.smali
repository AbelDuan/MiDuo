.class public Ldev/duo/hookprobe/InfoWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/InfoWidgetProvider$BatterySmall;,
        Ldev/duo/hookprobe/InfoWidgetProvider$BatteryMedium;,
        Ldev/duo/hookprobe/InfoWidgetProvider$CalendarSmall;,
        Ldev/duo/hookprobe/InfoWidgetProvider$CalendarMedium;,
        Ldev/duo/hookprobe/InfoWidgetProvider$WeatherSmall;,
        Ldev/duo/hookprobe/InfoWidgetProvider$WeatherMedium;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "dev.duo.hookprobe.INFO_WIDGET_CHANGED"

.field static final b:Ljava/lang/String; = "dev.duo.hookprobe.INFO_WIDGET_REFRESH"

.field static final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$-Swqh2NnNmMm4rV4rBb_nXuHxj8(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Ldev/duo/hookprobe/InfoWidgetProvider$BatterySmall;

    const-class v1, Ldev/duo/hookprobe/InfoWidgetProvider$BatteryMedium;

    const-class v2, Ldev/duo/hookprobe/InfoWidgetProvider$CalendarSmall;

    const-class v3, Ldev/duo/hookprobe/InfoWidgetProvider$CalendarMedium;

    const-class v4, Ldev/duo/hookprobe/InfoWidgetProvider$WeatherSmall;

    const-class v5, Ldev/duo/hookprobe/InfoWidgetProvider$WeatherMedium;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    .line 3
    const-string v5, "weather"

    const-string v6, "weather"

    const-string v1, "battery"

    const-string v2, "battery"

    const-string v3, "calendar"

    const-string v4, "calendar"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/InfoWidgetProvider;->d:[Ljava/lang/String;

    .line 4
    const-string v5, "\u5929\u6c14 \u00b7 2\u00d72"

    const-string v6, "\u5929\u6c14 \u00b7 4\u00d72"

    const-string v1, "\u7535\u6c60 \u00b7 2\u00d72"

    const-string v2, "\u7535\u6c60 \u00b7 4\u00d72"

    const-string v3, "\u65e5\u5386 \u00b7 2\u00d72"

    const-string v4, "\u65e5\u5386 \u00b7 4\u00d72"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/InfoWidgetProvider;->e:[Ljava/lang/String;

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/InfoWidgetProvider;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 63
    new-array v2, v1, [Landroid/os/Bundle;

    .line 64
    new-instance v3, Landroid/content/Intent;

    const-string v4, "dev.duo.hookprobe.INFO_WIDGET_REQUEST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "kind"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 66
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    new-instance v9, Ldev/duo/hookprobe/InfoWidgetProvider$a;

    invoke-direct {v9, v2, v0}, Ldev/duo/hookprobe/InfoWidgetProvider$a;-><init>([Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v10, Landroid/os/Handler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v10, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 80
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3

    invoke-virtual {v0, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    aget-object p0, v2, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 81
    :cond_1
    :goto_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string p1, "error"

    const-string v0, "\u7cfb\u7edf\u6570\u636e\u670d\u52a1\u672a\u54cd\u5e94"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dev.duo.hookprobe.INFO_WIDGET_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Ldev/duo/hookprobe/InfoWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 6
    sget-object v1, Ldev/duo/hookprobe/InfoWidgetProvider;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, v0}, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "cityId"

    const-string v3, ""

    const-string v4, "miduo_info_layout_b"

    .line 7
    :try_start_0
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 8
    sget-object v6, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    array-length v6, v6

    new-array v6, v6, [[I

    const/4 v7, 0x0

    move v8, v7

    .line 9
    :goto_0
    sget-object v9, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    array-length v10, v9

    if-ge v8, v10, :cond_0

    new-instance v10, Landroid/content/ComponentName;

    aget-object v9, v9, v8

    invoke-direct {v10, v0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 10
    :cond_0
    aget-object v8, v6, v7

    array-length v8, v8

    const/4 v9, 0x1

    aget-object v10, v6, v9

    array-length v10, v10

    add-int/2addr v8, v10

    if-lez v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v7

    .line 11
    :goto_1
    const/4 v10, 0x2

    aget-object v11, v6, v10

    array-length v11, v11

    const/4 v12, 0x3

    aget-object v13, v6, v12

    array-length v13, v13

    add-int/2addr v11, v13

    if-lez v11, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v7

    .line 12
    :goto_2
    const/4 v13, 0x4

    aget-object v13, v6, v13

    array-length v13, v13

    const/4 v14, 0x5

    aget-object v14, v6, v14

    array-length v14, v14

    add-int/2addr v13, v14

    if-lez v13, :cond_3

    move v13, v9

    goto :goto_3

    :cond_3
    move v13, v7

    :goto_3
    if-eqz v11, :cond_4

    .line 13
    invoke-static {v0}, Ldev/duo/hookprobe/A;->a(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v11

    goto :goto_4

    .line 14
    :cond_4
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 15
    :goto_4
    const-string v14, "next"

    move v15, v9

    const-wide v9, 0x7fffffffffffffffL

    invoke-virtual {v11, v14, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v0, v8, v13, v9, v10}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;ZZJ)V

    .line 16
    new-array v9, v12, [Landroid/os/Bundle;

    if-eqz v8, :cond_6

    if-ltz v1, :cond_5

    .line 17
    div-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_6

    :cond_5
    nop

    .line 18
    const-string v8, "battery"

    invoke-static {v0, v8}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v0, v8}, Ldev/duo/hookprobe/A;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    aput-object v8, v9, v7

    :cond_6
    nop

    .line 19
    aput-object v11, v9, v15

    if-eqz v13, :cond_8

    if-ltz v1, :cond_7

    .line 20
    div-int/lit8 v8, v1, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_8

    :cond_7
    nop

    .line 21
    const-string v8, "weather"

    invoke-static {v0, v8}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Ldev/duo/hookprobe/A;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    const/16 v16, 0x2

    aput-object v8, v9, v16

    :cond_8
    move v8, v7

    .line 22
    :goto_5
    sget-object v10, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    array-length v10, v10

    if-ge v8, v10, :cond_10

    if-ltz v1, :cond_9

    if-eq v8, v1, :cond_9

    move-object/from16 v19, v4

    const/16 v16, 0x2

    goto/16 :goto_b

    .line 24
    :cond_9
    aget-object v10, v6, v8

    array-length v10, v10

    if-nez v10, :cond_a

    move-object/from16 v19, v4

    const/16 v16, 0x2

    goto/16 :goto_b

    .line 25
    :cond_a
    sget-object v10, Ldev/duo/hookprobe/InfoWidgetProvider;->d:[Ljava/lang/String;

    aget-object v10, v10, v8

    rem-int/lit8 v11, v8, 0x2

    if-ne v11, v15, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    move v11, v7

    :goto_6
    div-int/lit8 v12, v8, 0x2

    aget-object v12, v9, v12

    invoke-static {v10, v11, v12}, Ldev/duo/hookprobe/z;->a(Ljava/lang/String;ZLandroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    aget-object v11, v6, v8

    array-length v12, v11

    move v13, v7

    :goto_7
    if-ge v13, v12, :cond_f

    aget v14, v11, v13

    .line 28
    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v15

    .line 29
    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 30
    xor-int/lit8 v7, v17, 0x1

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v5, v14, v15}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 32
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    if-nez v17, :cond_c

    const v17, 0x7f030003

    goto :goto_8

    :cond_c
    const v17, 0x7f030002

    :goto_8
    move/from16 v1, v17

    invoke-direct {v7, v15, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 33
    const v1, 0x7f020003

    invoke-virtual {v7, v1, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 34
    sget-object v15, Ldev/duo/hookprobe/InfoWidgetProvider;->e:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-virtual {v7, v1, v15}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 35
    new-instance v15, Landroid/content/Intent;

    const-class v1, Ldev/duo/hookprobe/InfoWidgetActivity;

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v15, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 36
    div-int/lit8 v15, v8, 0x2

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_d

    .line 37
    new-instance v15, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v15, "com.android.calendar"

    move-object/from16 v19, v4

    const-string v4, "com.android.calendar.homepage.AllInOneActivity"

    .line 38
    invoke-virtual {v1, v15, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 39
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/16 v16, 0x2

    goto :goto_9

    :cond_d
    move-object/from16 v19, v4

    .line 40
    div-int/lit8 v1, v8, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.miui.weather.widget_weather_detail"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.miui.weather2"

    const-string v15, "com.miui.weather2.ActivityWeatherMain"

    .line 42
    invoke-virtual {v1, v4, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "localId"

    .line 43
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v16, 0x2

    aget-object v4, v9, v16

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 44
    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 39
    :goto_9
    goto :goto_a

    .line 40
    :cond_e
    move/from16 v16, v4

    move-object/from16 v1, v18

    .line 44
    :goto_a
    const v4, 0x9ab0

    add-int/2addr v4, v8

    .line 46
    const/high16 v15, 0xc000000

    invoke-static {v0, v4, v1, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 48
    const v4, 0x7f020003

    invoke-virtual {v7, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 49
    invoke-virtual {v5, v14, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p1

    move-object/from16 v4, v19

    const/4 v7, 0x0

    goto/16 :goto_7

    .line 51
    :cond_f
    move-object/from16 v19, v4

    const/16 v16, 0x2

    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    move-object/from16 v4, v19

    const/4 v7, 0x0

    const/4 v15, 0x1

    goto/16 :goto_5

    .line 39
    :catchall_0
    move-exception v0

    .line 52
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 9
    :catchall_1
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 58
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 59
    const-string v1, "MiDuoWidgets"

    const-string v2, "widget update interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 61
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0
.end method

.method private static a(Landroid/content/Context;ZZJ)V
    .locals 9

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dev.duo.hookprobe.INFO_WIDGET_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "kind"

    const-string v2, "sync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "batteryActive"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "weatherActive"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 85
    const-string p2, "calendarNext"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 86
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 87
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetProvider;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "dev.duo.hookprobe.INFO_WIDGET_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProvider;->getSentFromPackage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetProvider;->b(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_1
    const-string v1, "dev.duo.hookprobe.INFO_WIDGET_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProvider;->getSentFromPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    return-void

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetProvider;->b(Landroid/content/Context;)V

    return-void

    .line 8
    :cond_3
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    const-string v1, "miui.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 13
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/InfoWidgetProvider;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    const/4 p2, 0x0

    .line 1
    :goto_0
    sget-object p3, Ldev/duo/hookprobe/InfoWidgetProvider;->c:[Ljava/lang/Class;

    array-length v0, p3

    if-ge p2, v0, :cond_1

    aget-object p3, p3, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ldev/duo/hookprobe/InfoWidgetProvider;->a(Landroid/content/Context;I)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
