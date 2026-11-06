.class Ldev/duo/workspaceprobe/b$q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method public static synthetic $r8$lambda$-IGPj0wpUAFR1oU3KXvnaWL0kRQ(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/b$q;->b(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3Ribfts7nlpvy0yr6DgaXVGv-vk(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/workspaceprobe/b$q;->a(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic a(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->n(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method

.method private static synthetic b(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ldev/duo/workspaceprobe/b;->R(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    iput-boolean v2, v0, Ldev/duo/workspaceprobe/b;->N1:Z

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-virtual {v0}, Ldev/duo/workspaceprobe/b;->v0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->S(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 6
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 7
    invoke-static {v0, v4}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Landroid/content/Intent;)V

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->T(Ldev/duo/workspaceprobe/b;)V

    .line 14
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, v2}, Ldev/duo/workspaceprobe/b;->d(Ldev/duo/workspaceprobe/b;Z)Z

    .line 15
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    if-nez v0, :cond_7

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    :cond_6
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ldev/duo/workspaceprobe/b;->d(Ldev/duo/workspaceprobe/b;Z)Z

    goto :goto_1

    .line 20
    :cond_7
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    iget-object v2, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v3, Ldev/duo/workspaceprobe/b$q$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Ldev/duo/workspaceprobe/b$q$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_8
    :goto_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    iget-object v2, v0, Ldev/duo/workspaceprobe/b;->A1:Landroid/os/Handler;

    new-instance v3, Ldev/duo/workspaceprobe/b$q$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Ldev/duo/workspaceprobe/b$q$$ExternalSyntheticLambda1;-><init>(Ldev/duo/workspaceprobe/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 25
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->V(Ldev/duo/workspaceprobe/b;)I

    .line 26
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->W(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 27
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    const-string v0, ""

    invoke-static {p2, v0}, Ldev/duo/workspaceprobe/b;->k(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p2, p1}, Ldev/duo/workspaceprobe/b;->e(Ldev/duo/workspaceprobe/b;Z)Z

    .line 29
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->X(Ldev/duo/workspaceprobe/b;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    iget p2, p2, Ldev/duo/workspaceprobe/b;->G1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 30
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    iget-boolean v0, p2, Ldev/duo/workspaceprobe/b;->I1:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p2, p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;ILandroid/content/ComponentName;)V

    .line 32
    :cond_9
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Y(Ldev/duo/workspaceprobe/b;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->Z(Ldev/duo/workspaceprobe/b;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->O(Ldev/duo/workspaceprobe/b;)V

    .line 33
    :cond_a
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$q;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->a0(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
