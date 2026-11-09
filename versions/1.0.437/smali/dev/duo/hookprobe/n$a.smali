.class Ldev/duo/hookprobe/n$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/n;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$RfLWcVTJSAH2JuobQhB4kxzneRk()V
    .locals 0

    invoke-static {}, Ldev/duo/hookprobe/n$a;->a()V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/n;->c()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/n;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Ldev/duo/hookprobe/n;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Ldev/duo/hookprobe/n$a$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ldev/duo/hookprobe/n$a$$ExternalSyntheticLambda0;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12c

    invoke-interface {p1, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
