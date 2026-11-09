.class public final synthetic Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget v1, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Ldev/duo/hookprobe/InfoWidgetProvider$$ExternalSyntheticLambda0;->f$2:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v0, v1, v2}, Ldev/duo/hookprobe/InfoWidgetProvider;->$r8$lambda$-Swqh2NnNmMm4rV4rBb_nXuHxj8(Landroid/content/Context;ILandroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method
