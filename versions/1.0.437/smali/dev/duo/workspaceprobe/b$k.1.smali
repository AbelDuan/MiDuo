.class Ldev/duo/workspaceprobe/b$k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$k;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 2
    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$k;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Ldev/duo/workspaceprobe/b$k;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p2}, Ldev/duo/workspaceprobe/b;->i(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Ldev/duo/workspaceprobe/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p2, p0, Ldev/duo/workspaceprobe/b$k;->a:Ldev/duo/workspaceprobe/b;

    const-string v0, "package"

    invoke-static {p2, p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$k;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->s(Ldev/duo/workspaceprobe/b;)V

    :cond_3
    :goto_2
    return-void
.end method
