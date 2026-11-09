.class final Ldev/duo/workspaceprobe/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/p$c;,
        Ldev/duo/workspaceprobe/p$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DuoWorkbenchAudio"

.field private static final b:I = 0xf

.field private static final c:J = 0x3e8L

.field static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ldev/duo/workspaceprobe/p;


# instance fields
.field private A:Landroid/media/VolumeShaper$Configuration;

.field private B:Landroid/media/VolumeShaper$Operation;

.field private C:Ljava/lang/Object;

.field private D:Ljava/lang/reflect/Method;

.field private E:Ljava/lang/reflect/Method;

.field private final F:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final G:Landroid/media/AudioManager$AudioPlaybackCallback;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/media/AudioManager;

.field private final i:Landroid/media/session/MediaSessionManager;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/session/MediaSession$Token;",
            "Ldev/duo/workspaceprobe/p$c;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/duo/workspaceprobe/p$b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:[Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/reflect/Method;

.field private t:Ljava/lang/reflect/Method;

.field private u:Ljava/lang/reflect/Method;

.field private v:Ljava/lang/reflect/Method;

.field private w:Ljava/lang/reflect/Method;

.field private x:Ljava/lang/reflect/Method;

.field private y:Ljava/lang/reflect/Method;

.field private z:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method public static synthetic $r8$lambda$9HenxSbMI4C9ovbrZtNcCQ2ojeo(Ldev/duo/workspaceprobe/p;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/workspaceprobe/p;->a(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "com.youku.phone"

    const-string v7, "com.miui.video"

    const-string v1, "com.ss.android.ugc.aweme"

    const-string v2, "com.smile.gifmaker"

    const-string v3, "tv.danmaku.bili"

    const-string v4, "com.qiyi.video"

    const-string v5, "com.tencent.qqlive"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldev/duo/workspaceprobe/p;->d:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->n:Ljava/util/Set;

    .line 73
    new-instance v0, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/p$$ExternalSyntheticLambda0;-><init>(Ldev/duo/workspaceprobe/p;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->F:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 76
    new-instance v0, Ldev/duo/workspaceprobe/p$a;

    invoke-direct {v0, p0}, Ldev/duo/workspaceprobe/p$a;-><init>(Ldev/duo/workspaceprobe/p;)V

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->G:Landroid/media/AudioManager$AudioPlaybackCallback;

    .line 77
    iput-object p1, p0, Ldev/duo/workspaceprobe/p;->f:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Ldev/duo/workspaceprobe/p;->g:Landroid/os/Handler;

    .line 79
    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Ldev/duo/workspaceprobe/p;->h:Landroid/media/AudioManager;

    .line 80
    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Ldev/duo/workspaceprobe/p;->i:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method static a(Landroid/app/TaskInfo;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_2
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev.duo."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method static synthetic a(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p0}, Ldev/duo/workspaceprobe/p;->b(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ldev/duo/workspaceprobe/p$c;Z)V
    .locals 13

    const-string v0, "\u5a92\u4f53\u76d1\u542c\u6ce8\u9500\u5931\u8d25"

    const-string v1, "DuoWorkbenchAudio"

    .line 54
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    iget-object v3, p1, Ldev/duo/workspaceprobe/p$c;->b:Landroid/media/session/MediaSession$Token;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v4}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    .line 57
    iget-object v5, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v5

    .line 58
    iget-boolean v6, p1, Ldev/duo/workspaceprobe/p$c;->d:Z

    if-eqz v6, :cond_0

    iget-object v6, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u6682\u505c\u672a\u786e\u8ba4\uff0c\u4e0d\u81ea\u52a8\u64ad\u653e"

    invoke-direct {p0, v6, v7}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x4

    const/4 v10, 0x1

    if-eqz p2, :cond_1

    .line 59
    iget-boolean v11, p1, Ldev/duo/workspaceprobe/p$c;->e:Z

    if-eqz v11, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v11

    if-ne v11, v10, :cond_1

    iget-object v11, p1, Ldev/duo/workspaceprobe/p$c;->k:Ljava/lang/String;

    iget-object v12, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    .line 60
    invoke-virtual {v12}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v12

    invoke-static {v12}, Ldev/duo/workspaceprobe/p;->b(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p1, Ldev/duo/workspaceprobe/p$c;->j:Landroid/media/session/PlaybackState;

    invoke-static {v11, v4}, Ldev/duo/workspaceprobe/p;->b(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 61
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v11

    and-long/2addr v11, v8

    cmp-long v11, v11, v6

    if-eqz v11, :cond_1

    iget-object p2, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 62
    iget-boolean p2, p1, Ldev/duo/workspaceprobe/p$c;->g:Z

    if-eqz p2, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result p2

    if-ne p2, v10, :cond_2

    if-eqz v4, :cond_2

    .line 63
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long p2, v4, v6

    if-eqz p2, :cond_2

    iget-object p2, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/session/MediaController$TransportControls;->play()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    nop

    .line 66
    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->g:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->f:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->e:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->d:Z

    .line 67
    iput-object v2, p1, Ldev/duo/workspaceprobe/p$c;->j:Landroid/media/session/PlaybackState;

    .line 68
    :try_start_1
    iget-object p2, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 58
    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 70
    :try_start_2
    const-string v4, "\u6062\u590d\u5de5\u4f5c\u53f0\u6682\u505c\u7684\u5a92\u4f53\u5931\u8d25"

    invoke-static {v1, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->g:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->f:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->e:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->d:Z

    .line 73
    iput-object v2, p1, Ldev/duo/workspaceprobe/p$c;->j:Landroid/media/session/PlaybackState;

    .line 74
    :try_start_3
    iget-object p2, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 68
    :catch_1
    move-exception p1

    .line 69
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :goto_1
    return-void

    :goto_2
    nop

    .line 75
    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->g:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->f:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->e:Z

    iput-boolean v3, p1, Ldev/duo/workspaceprobe/p$c;->d:Z

    .line 76
    iput-object v2, p1, Ldev/duo/workspaceprobe/p$c;->j:Landroid/media/session/PlaybackState;

    .line 77
    :try_start_4
    iget-object v2, p1, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v2, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 78
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_3
    throw p2
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->c()V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/p;Ldev/duo/workspaceprobe/p$c;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p$c;Z)V

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/p;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->n:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DuoWorkbenchAudio"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0

    .line 53
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->d()V

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z
    .locals 0

    .line 4
    invoke-static {p0, p1}, Ldev/duo/workspaceprobe/p;->b(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->f:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 10
    const-class v0, Landroid/media/AudioPlaybackConfiguration;

    .line 11
    const-string v1, "getPlayerInterfaceId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->s:Ljava/lang/reflect/Method;

    .line 12
    const-string v1, "getClientUid"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->t:Ljava/lang/reflect/Method;

    .line 13
    const-string v1, "getClientPid"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->u:Ljava/lang/reflect/Method;

    .line 14
    const-string v1, "getPlayerState"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->v:Ljava/lang/reflect/Method;

    .line 15
    const-string v1, "getPlayerType"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->w:Ljava/lang/reflect/Method;

    .line 16
    const-string v1, "getPlayerProxy"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->x:Ljava/lang/reflect/Method;

    .line 17
    const-string v0, "android.media.PlayerProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/media/VolumeShaper$Configuration;

    const-class v3, Landroid/media/VolumeShaper$Operation;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "applyVolumeShaper"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->y:Ljava/lang/reflect/Method;

    .line 18
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 19
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setId"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v1, Landroid/media/VolumeShaper$Configuration;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeShaper$Configuration;

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->A:Landroid/media/VolumeShaper$Configuration;

    .line 22
    const-string v1, "android.media.VolumeShaper$Operation$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "terminate"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "build"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeShaper$Operation;

    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->B:Landroid/media/VolumeShaper$Operation;

    .line 25
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->z:Landroid/media/VolumeShaper$Configuration;

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SystemUI lacks MODIFY_AUDIO_ROUTING; anonymized player lists are not controllable"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private b(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 29
    :try_start_0
    iget-object v4, p0, Ldev/duo/workspaceprobe/p;->s:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    iget-object v6, p0, Ldev/duo/workspaceprobe/p;->t:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Ldev/duo/workspaceprobe/p;->u:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 30
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v9, p0, Ldev/duo/workspaceprobe/p;->v:Ljava/lang/reflect/Method;

    invoke-virtual {v9, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1
    iget-object v9, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/duo/workspaceprobe/p$b;

    if-eqz v9, :cond_2

    .line 33
    invoke-virtual {v9, v7, v8}, Ldev/duo/workspaceprobe/p$b;->a(II)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v9, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v5

    .line 34
    :cond_2
    iget-boolean v11, p0, Ldev/duo/workspaceprobe/p;->p:Z

    const/4 v12, 0x1

    if-nez v11, :cond_3

    iget-object v11, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v12

    :cond_3
    if-eqz v9, :cond_4

    if-nez v3, :cond_4

    .line 36
    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->y:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/workspaceprobe/p;->x:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->A:Landroid/media/VolumeShaper$Configuration;

    iget-object v6, p0, Ldev/duo/workspaceprobe/p;->B:Landroid/media/VolumeShaper$Operation;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    if-nez v9, :cond_7

    if-eqz v3, :cond_7

    .line 38
    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->v:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v10, :cond_0

    .line 39
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "uid="

    if-eq v3, v12, :cond_5

    const/16 v9, 0xe

    if-eq v3, v9, :cond_5

    .line 41
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/usage="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u975e\u5a92\u4f53/\u6e38\u620f\u97f3\u9891\uff0c\u4e0d\u63a5\u7ba1\u901a\u8bdd\u3001\u63d0\u793a\u97f3\u6216\u7528\u9014\u672a\u77e5\u7684\u64ad\u653e\u5668"

    invoke-direct {p0, v2, v3}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43
    :cond_5
    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->w:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v12, :cond_6

    if-eq v3, v10, :cond_6

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6b64\u64ad\u653e\u5668\u4e0d\u5728 AudioTrack/MediaPlayer \u9759\u97f3\u652f\u6301\u8303\u56f4"

    invoke-direct {p0, v2, v3}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :cond_6
    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->y:Ljava/lang/reflect/Method;

    iget-object v6, p0, Ldev/duo/workspaceprobe/p;->x:Ljava/lang/reflect/Method;

    invoke-virtual {v6, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->z:Landroid/media/VolumeShaper$Configuration;

    sget-object v6, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    new-instance v3, Ldev/duo/workspaceprobe/p$b;

    invoke-direct {v3, v7, v8}, Ldev/duo/workspaceprobe/p$b;-><init>(II)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :cond_7
    :goto_1
    goto/16 :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 48
    const-string v3, "DuoWorkbenchAudio"

    const-string v4, "\u64ad\u653e\u5668\u9759\u97f3\u5c42\u64cd\u4f5c\u5931\u8d25"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 50
    :cond_8
    iget-object p1, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 51
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-eqz p1, :cond_9

    goto :goto_3

    .line 52
    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_a
    :goto_2
    if-ge v3, v0, :cond_b

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Ldev/duo/workspaceprobe/p$c;

    .line 53
    iget-object v4, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    iget-object v5, v2, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 54
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ldev/duo/workspaceprobe/p$c;->a(Z)V

    goto :goto_2

    :cond_b
    :goto_3
    return-void
.end method

.method private static b(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/p;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/workspaceprobe/p;->p:Z

    return p0
.end method

.method static synthetic c(Ldev/duo/workspaceprobe/p;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 25
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/p;->p:Z

    const-string v1, "DuoWorkbenchAudio"

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->f()V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    const-string v2, "\u89c6\u9891\u7126\u70b9\u9694\u79bb\u5c1a\u672a\u91ca\u653e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->z:Landroid/media/VolumeShaper$Configuration;

    if-nez v0, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->h:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/p;->b(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 29
    const-string v2, "\u64ad\u653e\u5668\u5217\u8868\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ldev/duo/workspaceprobe/p$c;

    .line 5
    iget-object v7, v6, Ldev/duo/workspaceprobe/p$c;->b:Landroid/media/session/MediaSession$Token;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v6, v3}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p$c;Z)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v7, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    iget-object v8, v6, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const v9, 0x186a0

    div-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Ldev/duo/workspaceprobe/p$c;->a:Landroid/media/session/MediaController;

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    .line 8
    :goto_2
    invoke-direct {p0, v6, v5}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p$c;Z)V

    goto :goto_1

    .line 11
    :cond_4
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-eqz v0, :cond_5

    goto/16 :goto_5

    .line 12
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 13
    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 14
    :cond_7
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 15
    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    if-eq v1, v5, :cond_8

    goto :goto_4

    .line 18
    :cond_8
    new-instance v1, Ldev/duo/workspaceprobe/p$c;

    invoke-direct {v1, p0, v0}, Ldev/duo/workspaceprobe/p$c;-><init>(Ldev/duo/workspaceprobe/p;Landroid/media/session/MediaController;)V

    .line 19
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    iget-object v4, v1, Ldev/duo/workspaceprobe/p$c;->b:Landroid/media/session/MediaSession$Token;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :try_start_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 22
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ldev/duo/workspaceprobe/p$c;->a(Landroid/media/session/PlaybackState;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5a92\u4f53\u4f1a\u8bdd\u63a5\u7ba1\u5931\u8d25 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DuoWorkbenchAudio"

    invoke-static {v4, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1, v3}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p$c;Z)V

    goto :goto_3

    .line 24
    :cond_9
    :goto_4
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8fdc\u7a0b\u6216\u672a\u77e5\u64ad\u653e\u8def\u7531\uff0c\u4e0d\u63a7\u5236\u5de5\u4f5c\u53f0\u5916\u8bbe\u5907"

    invoke-direct {p0, v0, v1}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method static synthetic d(Ldev/duo/workspaceprobe/p;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->i:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/duo/workspaceprobe/p;->c(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "DuoWorkbenchAudio"

    const-string v2, "\u5a92\u4f53\u4f1a\u8bdd\u5217\u8868\u8bfb\u53d6\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private e()V
    .locals 3

    .line 2
    sget-object v0, Ldev/duo/workspaceprobe/p;->e:Ldev/duo/workspaceprobe/p;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Ldev/duo/workspaceprobe/p;->e:Ldev/duo/workspaceprobe/p;

    .line 3
    :cond_0
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/p;->q:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/workspaceprobe/p;->q:Z

    .line 5
    :try_start_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->h:Landroid/media/AudioManager;

    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->G:Landroid/media/AudioManager$AudioPlaybackCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "DuoWorkbenchAudio"

    const-string v2, "\u64ad\u653e\u5668\u76d1\u542c\u6ce8\u9500\u5931\u8d25"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic e(Ldev/duo/workspaceprobe/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->e()V

    return-void
.end method

.method static synthetic f(Ldev/duo/workspaceprobe/p;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    return-object p0
.end method

.method private f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->C:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 4
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "audio"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    const-string v1, "android.media.IAudioService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->C:Ljava/lang/Object;

    .line 6
    const-string v0, "android.media.IAudioService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "enterFocusIsolation"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Ldev/duo/workspaceprobe/p;->D:Ljava/lang/reflect/Method;

    .line 8
    const-class v2, Landroid/os/IBinder;

    filled-new-array {v2, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "exitFocusIsolation"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->E:Ljava/lang/reflect/Method;

    .line 11
    :cond_1
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 14
    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Ldev/duo/workspaceprobe/p;->D:Ljava/lang/reflect/Method;

    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->C:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u53d6\u5f97\u89c6\u9891\u7126\u70b9\u9694\u79bb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 21
    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    iget-boolean v5, p0, Ldev/duo/workspaceprobe/p;->p:Z

    const/4 v6, 0x1

    if-nez v5, :cond_6

    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const v8, 0x186a0

    div-int/2addr v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    move v5, v2

    .line 24
    :goto_2
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, p0, Ldev/duo/workspaceprobe/p;->E:Ljava/lang/reflect/Method;

    iget-object v9, p0, Ldev/duo/workspaceprobe/p;->C:Ljava/lang/Object;

    iget-object v10, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x2

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v10, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u89c6\u9891\u7126\u70b9\u9694\u79bb\u8bb0\u5f55\u5df2\u4e0d\u5b58\u5728 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DuoWorkbenchAudio"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_8
    iget-object v5, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    :goto_4
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    sget-object v0, Ldev/duo/workspaceprobe/p;->e:Ldev/duo/workspaceprobe/p;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    iget-object v2, v0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object v1, v0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    iget-object v2, v0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    iget-object v1, v0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 7
    invoke-direct {v0}, Ldev/duo/workspaceprobe/p;->e()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    const-string v0, "DuoWorkbenchAudio"

    .line 80
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-eqz v1, :cond_0

    return-void

    .line 81
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldev/duo/workspaceprobe/p;->p:Z

    .line 82
    iget-object v1, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 83
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->c()V

    .line 84
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->i:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Ldev/duo/workspaceprobe/p;->c(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 85
    const-string v3, "\u9000\u51fa\u65f6\u65e0\u6cd5\u6838\u5bf9\u4f1a\u8bdd\u5b58\u6d3b\uff0c\u4e0d\u53d1\u9001\u64ad\u653e"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->j:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ldev/duo/workspaceprobe/p$c;

    invoke-direct {p0, v6, v4}, Ldev/duo/workspaceprobe/p;->a(Ldev/duo/workspaceprobe/p$c;Z)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->e()V

    goto :goto_2

    .line 89
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u97f3\u9891\u63a7\u5236\u672a\u786e\u8ba4\u64a4\u9500\uff0c\u4fdd\u7559\u6e05\u7406\u8d23\u4efb "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->k:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->l:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sput-object p0, Ldev/duo/workspaceprobe/p;->e:Ldev/duo/workspaceprobe/p;

    .line 91
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/p;->q:Z

    if-nez v2, :cond_3

    const-string v2, "\u97f3\u9891\u6e05\u7406\u5c1a\u672a\u5b8c\u6210\u4e14\u6ca1\u6709\u64ad\u653e\u5668\u76d1\u542c"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_3
    :goto_2
    iget-boolean v2, p0, Ldev/duo/workspaceprobe/p;->r:Z

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->i:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Ldev/duo/workspaceprobe/p;->F:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 94
    const-string v3, "\u4f1a\u8bdd\u5217\u8868\u76d1\u542c\u6ce8\u9500\u5931\u8d25"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    nop

    .line 95
    iput-object v1, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method a([Ljava/lang/String;)V
    .locals 11

    .line 10
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/p;->p:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 11
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ldev/duo/workspaceprobe/p;->o:[Ljava/lang/String;

    .line 12
    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 14
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    if-eqz v5, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    move v2, v1

    .line 15
    :goto_1
    array-length v4, p1

    const-string v5, "DuoWorkbenchAudio"

    if-ge v2, v4, :cond_9

    .line 16
    aget-object v4, p1, v2

    if-nez v4, :cond_3

    goto/16 :goto_3

    .line 18
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "\u540c\u4e00\u5e94\u7528\u591a\u4efb\u52a1\uff0c\u4e0d\u80fd\u628a\u5a92\u4f53\u5f52\u5c5e\u5230\u5177\u4f53\u7a97\u53e3"

    invoke-direct {p0, v4, v5}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19
    :cond_4
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 20
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 21
    sget-object v8, Ldev/duo/workspaceprobe/p;->d:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 24
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const v9, 0x186a0

    div-int/2addr v8, v9

    if-eq v6, v8, :cond_6

    const-string v5, "\u5176\u4ed6\u7528\u6237\u5a92\u4f53\u4e0d\u63a5\u7ba1"

    invoke-direct {p0, v4, v5}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_6
    :try_start_0
    iget-object v6, p0, Ldev/duo/workspaceprobe/p;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    iget-object v8, p0, Ldev/duo/workspaceprobe/p;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 28
    rem-int v9, v6, v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_8

    if-eqz v8, :cond_8

    array-length v9, v8

    if-ne v9, v1, :cond_8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 31
    :cond_7
    iget-object v4, p0, Ldev/duo/workspaceprobe/p;->m:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 32
    :cond_8
    :goto_2
    const-string v6, "\u7cfb\u7edf\u6216\u5171\u4eab UID\uff0c\u65e0\u6cd5\u5b89\u5168\u5b9a\u5411\u9759\u97f3"

    invoke-direct {p0, v4, v6}, Ldev/duo/workspaceprobe/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 31
    :catch_0
    move-exception v4

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6210\u5458\u5df2\u4e0d\u53ef\u7528 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 37
    :cond_9
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/p;->r:Z

    if-nez p1, :cond_a

    .line 38
    :try_start_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/p;->i:Landroid/media/session/MediaSessionManager;

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->F:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->g:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 39
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/p;->r:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 40
    const-string v0, "\u65e0\u6cd5\u76d1\u542c\u5a92\u4f53\u4f1a\u8bdd\uff1b\u6682\u505c\u4e0d\u53ef\u7528"

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_a
    :goto_4
    iget-boolean p1, p0, Ldev/duo/workspaceprobe/p;->q:Z

    if-nez p1, :cond_c

    .line 42
    :try_start_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/p;->z:Landroid/media/VolumeShaper$Configuration;

    if-nez p1, :cond_b

    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->b()V

    .line 43
    :cond_b
    iget-object p1, p0, Ldev/duo/workspaceprobe/p;->h:Landroid/media/AudioManager;

    iget-object v0, p0, Ldev/duo/workspaceprobe/p;->G:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object v2, p0, Ldev/duo/workspaceprobe/p;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0, v2}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    .line 44
    iput-boolean v1, p0, Ldev/duo/workspaceprobe/p;->q:Z

    .line 45
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->g()V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 42
    :catch_2
    move-exception p1

    .line 46
    const-string v0, "\u65e0\u6cd5\u76d1\u542c\u6216\u5b9a\u5411\u9759\u97f3\u64ad\u653e\u5668"

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :cond_c
    :goto_5
    :try_start_3
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->f()V
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 49
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->c()V

    .line 50
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->d()V

    .line 51
    invoke-direct {p0}, Ldev/duo/workspaceprobe/p;->c()V

    return-void

    :catch_3
    move-exception p1

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5c0f\u7a97\u89c6\u9891\u7126\u70b9\u9694\u79bb\u5931\u8d25"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    :goto_6
    return-void
.end method
