.class public final synthetic Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/appwidget/AppWidgetManager;

.field public final synthetic f$4:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$3:Landroid/appwidget/AppWidgetManager;

    iput-object p5, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$4:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-boolean v0, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$1:[I

    iget-object v2, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$3:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Ldev/duo/hookprobe/AlbumWidgetProvider$$ExternalSyntheticLambda0;->f$4:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2, v3, v4}, Ldev/duo/hookprobe/AlbumWidgetProvider;->$r8$lambda$LOgZSsk525f8qCKEJCw20ykejJI(Z[ILandroid/content/Context;Landroid/appwidget/AppWidgetManager;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
