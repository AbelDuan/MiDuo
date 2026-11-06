.class Ldev/duo/workspaceprobe/b$i;
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
.field final synthetic a:Ldev/duo/workspaceprobe/b$h0;

.field final synthetic b:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$i;->b:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$i;->a:Ldev/duo/workspaceprobe/b$h0;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$i;->a:Ldev/duo/workspaceprobe/b$h0;

    iget v0, p1, Ldev/duo/workspaceprobe/b$h0;->M:F

    .line 4
    iget-boolean p1, p1, Ldev/duo/workspaceprobe/b$h0;->N:Z

    .line 5
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    .line 7
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$i;->a:Ldev/duo/workspaceprobe/b$h0;

    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v3, Ldev/duo/workspaceprobe/b$h0;->M:F

    .line 8
    :cond_0
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$i;->a:Ldev/duo/workspaceprobe/b$h0;

    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-eq v1, p2, :cond_1

    const/4 p2, 0x5

    if-ne v1, p2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    iput-boolean v2, v3, Ldev/duo/workspaceprobe/b$h0;->N:Z

    .line 12
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$i;->a:Ldev/duo/workspaceprobe/b$h0;

    iget v1, p2, Ldev/duo/workspaceprobe/b$h0;->M:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-boolean p2, p2, Ldev/duo/workspaceprobe/b$h0;->N:Z

    if-ne p1, p2, :cond_3

    return-void

    .line 13
    :cond_3
    invoke-static {}, Ldev/duo/workspaceprobe/d;->d()V

    .line 15
    :cond_4
    invoke-static {}, Ldev/duo/workspaceprobe/d;->e()V

    .line 16
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$i;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->M(Ldev/duo/workspaceprobe/b;)V

    .line 17
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$i;->b:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->O(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
