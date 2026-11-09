.class Ldev/duo/hookprobe/StandbyTrialActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/StandbyTrialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/StandbyTrialActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/StandbyTrialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/StandbyTrialActivity$b;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/StandbyTrialActivity$b;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/StandbyTrialActivity;->d(Ldev/duo/hookprobe/StandbyTrialActivity;)V

    return-void
.end method
