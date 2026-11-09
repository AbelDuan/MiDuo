.class Ldev/duo/hookprobe/StandbyTrialActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/StandbyTrialActivity;->a(Ldev/duo/hookprobe/StandbyTrialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/StandbyTrialActivity;->b(Ldev/duo/hookprobe/StandbyTrialActivity;)Ldev/duo/hookprobe/StandbyTrialActivity$c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 3
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity$a;->a:Ldev/duo/hookprobe/StandbyTrialActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/StandbyTrialActivity;->c(Ldev/duo/hookprobe/StandbyTrialActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
