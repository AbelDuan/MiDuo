.class final Ldev/duo/workspaceprobe/o$c;
.super Landroid/media/session/MediaController$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/media/session/MediaController;

.field final b:Landroid/media/session/MediaSession$Token;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:J

.field i:I

.field j:Landroid/media/session/PlaybackState;

.field k:Ljava/lang/String;

.field final synthetic l:Ldev/duo/workspaceprobe/o;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/o;Landroid/media/session/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 2
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/workspaceprobe/o$c;->i:I

    .line 5
    iput-object p2, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$c;->b:Landroid/media/session/MediaSession$Token;

    return-void
.end method


# virtual methods
.method a(Landroid/media/session/PlaybackState;Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 17
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    iget-object p2, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u4f1a\u8bdd\u6ca1\u6709\u64ad\u653e\u72b6\u6001\uff0c\u4ec5\u8bf7\u6c42\u64ad\u653e\u5668\u9759\u97f3"

    invoke-static {p1, p2, v0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_0
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    .line 19
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    .line 20
    iget-object v1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    iget-object v4, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6682\u505c\u672a\u53ca\u65f6\u786e\u8ba4\uff0c\u4e4b\u540e\u7684\u6682\u505c\u7b97\u7528\u6237\u7684\uff0c\u4e0d\u81ea\u52a8\u6062\u590d"

    invoke-static {v1, v4, v5}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    iget v1, p0, Ldev/duo/workspaceprobe/o$c;->i:I

    .line 23
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    iput v4, p0, Ldev/duo/workspaceprobe/o$c;->i:I

    if-eqz p2, :cond_3

    .line 28
    iget-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    .line 29
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    .line 30
    iget-object v2, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    iget-object v3, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6682\u505c\u540e\u72b6\u6001\u53c8\u53d8\uff0c\u7b97\u7528\u6237\u64cd\u4f5c\uff0c\u4e0d\u518d\u81ea\u52a8\u6062\u590d"

    invoke-static {v2, v3, v4}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_3
    iget v2, p0, Ldev/duo/workspaceprobe/o$c;->i:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    if-eq v1, v3, :cond_4

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    .line 33
    :cond_4
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    if-ne v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v1

    iget-wide v4, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_5

    .line 34
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    .line 35
    iget-object v1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    iget-object v2, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\u6682\u505c\u540e\u4ecd\u62a5\u544a\u64ad\u653e\uff0c\u4ec5\u4fdd\u6301\u9759\u97f3\uff0c\u4e0d\u8ba4\u9886\u968f\u540e\u7684\u7528\u6237\u6682\u505c"

    invoke-static {v1, v2, v4}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_5
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    .line 38
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_6

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    .line 39
    :cond_6
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Ldev/duo/workspaceprobe/o$c;->j:Landroid/media/session/PlaybackState;

    .line 42
    :cond_7
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p2

    if-ne p2, v2, :cond_8

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v4

    iget-wide v6, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    cmp-long p2, v4, v6

    if-ltz p2, :cond_8

    .line 43
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    iget-object p2, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/duo/workspaceprobe/o;->a(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result p2

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$c;->j:Landroid/media/session/PlaybackState;

    .line 44
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p1}, Ldev/duo/workspaceprobe/o;->a(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$c;->k:Ljava/lang/String;

    return-void

    .line 47
    :cond_8
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p2

    if-eq p2, v3, :cond_9

    .line 48
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    if-eq p1, v2, :cond_c

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    return-void

    .line 51
    :cond_9
    iget-boolean p2, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    if-eqz p2, :cond_a

    goto :goto_0

    .line 52
    :cond_a
    const/4 p2, 0x1

    iput-boolean p2, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    .line 53
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_b

    .line 54
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    iget-object p2, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u5a92\u4f53\u4f1a\u8bdd\u4e0d\u652f\u6301\u6682\u505c\uff0c\u4ec5\u8bf7\u6c42\u64ad\u653e\u5668\u9759\u97f3\uff0c\u89c6\u9891\u53ef\u80fd\u7ee7\u7eed"

    invoke-static {p1, p2, v0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    nop

    .line 56
    iput-boolean p2, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    .line 58
    :try_start_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5b9a\u5411\u6682\u505c\u5931\u8d25 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DuoWorkbenchAudio"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 7

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    sub-long/2addr v0, v2

    .line 3
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-wide/16 v5, 0x3e8

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 4
    iput-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    return-void

    :cond_0
    if-nez p1, :cond_5

    .line 5
    iput-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    iput-boolean v3, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iput-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    :cond_2
    if-eqz p1, :cond_5

    .line 9
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 12
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    const-wide/16 v5, 0x2

    and-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v0, v5

    if-nez p1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    iput-boolean v3, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    iput-boolean v3, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/workspaceprobe/o$c;->h:J

    .line 15
    :try_start_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController$TransportControls;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 16
    iput-boolean v4, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b9a\u5411\u6682\u505c\u5931\u8d25 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DuoWorkbenchAudio"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    invoke-static {v0}, Ldev/duo/workspaceprobe/o;->b(Ldev/duo/workspaceprobe/o;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    invoke-static {v0}, Ldev/duo/workspaceprobe/o;->f(Ldev/duo/workspaceprobe/o;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$c;->b:Landroid/media/session/MediaSession$Token;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/o$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ldev/duo/workspaceprobe/o$c;Z)V

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/o$c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->g:Z

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->f:Z

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/workspaceprobe/o$c;->j:Landroid/media/session/PlaybackState;

    .line 5
    iput-boolean p1, p0, Ldev/duo/workspaceprobe/o$c;->c:Z

    .line 6
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ldev/duo/workspaceprobe/o$c;->a(Landroid/media/session/PlaybackState;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    const-string v0, "DuoWorkbenchAudio"

    const-string v1, "\u5a92\u4f53\u6761\u76ee\u66f4\u65b0\u5931\u8d25"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldev/duo/workspaceprobe/o$c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ldev/duo/workspaceprobe/o$c;->a(Landroid/media/session/PlaybackState;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->e:Z

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/o$c;->d:Z

    const-string v0, "DuoWorkbenchAudio"

    const-string v1, "\u5a92\u4f53\u72b6\u6001\u56de\u8c03\u5931\u8d25\uff0c\u653e\u5f03\u81ea\u52a8\u64ad\u653e\u6743"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    invoke-static {v0}, Ldev/duo/workspaceprobe/o;->f(Ldev/duo/workspaceprobe/o;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/o$c;->b:Landroid/media/session/MediaSession$Token;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/o$c;->l:Ldev/duo/workspaceprobe/o;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ldev/duo/workspaceprobe/o;->a(Ldev/duo/workspaceprobe/o;Ldev/duo/workspaceprobe/o$c;Z)V

    :cond_0
    return-void
.end method
