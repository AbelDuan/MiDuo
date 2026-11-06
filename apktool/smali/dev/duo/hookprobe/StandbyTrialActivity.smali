.class public final Ldev/duo/hookprobe/StandbyTrialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/StandbyTrialActivity$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Ldev/duo/hookprobe/StandbyTrialActivity$c;

.field private c:Z

.field private final d:Ljava/lang/Runnable;

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    .line 5
    new-instance v0, Ldev/duo/hookprobe/StandbyTrialActivity$a;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/StandbyTrialActivity$a;-><init>(Ldev/duo/hookprobe/StandbyTrialActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->d:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Ldev/duo/hookprobe/StandbyTrialActivity$b;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/StandbyTrialActivity$b;-><init>(Ldev/duo/hookprobe/StandbyTrialActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-boolean v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/StandbyTrialActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->c:Z

    return p0
.end method

.method static synthetic b(Ldev/duo/hookprobe/StandbyTrialActivity;)Ldev/duo/hookprobe/StandbyTrialActivity$c;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->b:Ldev/duo/hookprobe/StandbyTrialActivity$c;

    return-object p0
.end method

.method static synthetic c(Ldev/duo/hookprobe/StandbyTrialActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Ldev/duo/hookprobe/StandbyTrialActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/StandbyTrialActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 5
    new-instance p1, Ldev/duo/hookprobe/StandbyTrialActivity$c;

    invoke-direct {p1, p0}, Ldev/duo/hookprobe/StandbyTrialActivity$c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->b:Ldev/duo/hookprobe/StandbyTrialActivity$c;

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    .line 8
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->c:Z

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->c:Z

    .line 3
    invoke-direct {p0}, Ldev/duo/hookprobe/StandbyTrialActivity;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->e:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/StandbyTrialActivity;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    invoke-direct {p0}, Ldev/duo/hookprobe/StandbyTrialActivity;->a()V

    return-void
.end method
