.class Ldev/duo/workspaceprobe/p$a;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/p;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-static {p1}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p;)V

    .line 2
    iget-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-static {p1}, Ldev/duo/workspaceprobe/p;->b(Ldev/duo/workspaceprobe/p;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-static {p1}, Ldev/duo/workspaceprobe/p;->c(Ldev/duo/workspaceprobe/p;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-static {p1}, Ldev/duo/workspaceprobe/p;->d(Ldev/duo/workspaceprobe/p;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/p$a;->a:Ldev/duo/workspaceprobe/p;

    invoke-static {p1}, Ldev/duo/workspaceprobe/p;->e(Ldev/duo/workspaceprobe/p;)V

    :cond_0
    return-void
.end method
