.class Ldev/duo/workspaceprobe/o$a;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/o;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

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
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;)V

    .line 2
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->b(Ldev/duo/workspaceprobe/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->c(Ldev/duo/workspaceprobe/o;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->d(Ldev/duo/workspaceprobe/o;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/duo/workspaceprobe/o$a;->a:Ldev/duo/workspaceprobe/o;

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->e(Ldev/duo/workspaceprobe/o;)V

    :cond_0
    return-void
.end method
