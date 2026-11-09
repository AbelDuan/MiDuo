.class Ldev/duo/workspaceprobe/b$p;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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
.field private a:Landroid/net/Network;

.field final synthetic b:Ldev/duo/workspaceprobe/b$h0;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$h0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$p;->d:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$p;->b:Ldev/duo/workspaceprobe/b$h0;

    iput-object p3, p0, Ldev/duo/workspaceprobe/b$p;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$p;->a:Landroid/net/Network;

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$p;->a:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$p;->b:Ldev/duo/workspaceprobe/b$h0;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    iput-boolean p2, p1, Ldev/duo/workspaceprobe/b$h0;->O:Z

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$p;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$p;->a:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$p;->a:Landroid/net/Network;

    .line 3
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$p;->b:Ldev/duo/workspaceprobe/b$h0;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldev/duo/workspaceprobe/b$h0;->O:Z

    .line 4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$p;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
