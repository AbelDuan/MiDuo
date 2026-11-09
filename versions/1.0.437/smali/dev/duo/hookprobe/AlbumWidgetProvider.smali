.class public final Ldev/duo/hookprobe/AlbumWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "dev.duo.hookprobe.ALBUM_REFRESH"

.field private static final b:Ljava/lang/String; = "MiDuoAlbum"

.field private static final c:Ljava/lang/String; = "after_home"

.field private static final d:Ljava/lang/String; = "album_widget"

.field private static final e:[J

.field private static final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$LOgZSsk525f8qCKEJCw20ykejJI(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Ldev/duo/hookprobe/AlbumWidgetProvider;->e:[J

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ldev/duo/hookprobe/AlbumWidgetProvider;->f:Ljava/util/concurrent/ExecutorService;

    return-void

    nop

    :array_0
    .array-data 8
        0x320
        0x4b0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ldev/duo/hookprobe/b$d;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v1, Ldev/duo/hookprobe/AlbumWidgetProvider$a;

    invoke-direct {v1, v0, p0}, Ldev/duo/hookprobe/AlbumWidgetProvider$a;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    return-object v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout_b_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 6

    .line 31
    invoke-static {p2}, Ldev/duo/hookprobe/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 33
    const-string v2, "miuiEditUri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 34
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, p2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 37
    :cond_0
    invoke-static {p0, p2}, Ldev/duo/hookprobe/c;->c(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    invoke-static {p0, p2}, Ldev/duo/hookprobe/c;->b(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cannot decode photo for widget "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiDuoAlbum"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_1
    const-string v1, "album_widget"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    invoke-static {v1, p2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/SharedPreferences;I)Z

    move-result v2

    .line 44
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    const v5, 0x7f030001

    goto :goto_0

    :cond_2
    const/high16 v5, 0x7f030000

    .line 45
    :goto_0
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 46
    new-instance v4, Landroid/content/Intent;

    const-class v5, Ldev/duo/hookprobe/WidgetCenterActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 48
    const/high16 v5, 0xc000000

    invoke-static {p0, p2, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 51
    const v4, 0x7f020001

    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-eqz v0, :cond_3

    .line 54
    invoke-static {v0}, Ldev/duo/hookprobe/e;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    invoke-virtual {v3, v4, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 57
    const v0, 0x7f020002

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 58
    const/high16 v0, 0x7f020000

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 51
    :cond_3
    const/4 p0, 0x0

    .line 60
    :goto_1
    invoke-virtual {p1, p2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    if-eqz p0, :cond_4

    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 7

    .line 6
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v6

    .line 9
    sget-object p1, Ldev/duo/hookprobe/AlbumWidgetProvider;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;

    move-object v5, p2

    move-object v3, p3

    move v2, p4

    invoke-direct/range {v1 .. v6}, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;-><init>(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 10
    :try_start_0
    sget-object p0, Ldev/duo/hookprobe/AlbumWidgetProvider;->e:[J

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-wide v3, p0, v2

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 12
    array-length v3, p1

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, p1, v4

    invoke-static {p2, v5}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p2, p3, v5}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    array-length p0, p1

    :goto_2
    if-ge v0, p0, :cond_3

    aget v1, p1, v0

    invoke-static {p2, p3, v1}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_3
    invoke-static {p2}, Ldev/duo/hookprobe/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p2, p1}, Ldev/duo/hookprobe/AlbumPageJob;->a(Landroid/content/Context;[I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_4
    invoke-virtual {p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 12
    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 25
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    .line 28
    :goto_3
    invoke-virtual {p4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 29
    throw p0
.end method

.method static a(Landroid/content/Context;I)Z
    .locals 4

    .line 3
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Ldev/duo/hookprobe/AlbumWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Landroid/content/SharedPreferences;I)Z
    .locals 1

    .line 30
    invoke-static {p1}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static b(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "dev.duo.hookprobe.ALBUM_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Ldev/duo/hookprobe/AlbumWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "after_home"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    const-string v0, "album_widget"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p2, v1

    .line 3
    invoke-static {p1, v3}, Ldev/duo/hookprobe/c;->a(Landroid/content/Context;I)V

    .line 4
    invoke-static {v3}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "appWidgetIds"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0, p1, v0, p2, v2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "dev.duo.hookprobe.ALBUM_REFRESH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 7
    invoke-static {p1, v1}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    filled-new-array {v1}, [I

    move-result-object v1

    const-string v3, "after_home"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-direct {p0, p1, v0, v1, p2}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    :cond_1
    return-void

    .line 9
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ldev/duo/hookprobe/AlbumWidgetProvider;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method
