.class final Ldev/duo/workspaceprobe/b$f0;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f0"
.end annotation


# instance fields
.field private final a:Ldev/duo/workspaceprobe/b$h0;

.field private b:[I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 2
    const/4 p1, 0x0

    new-array p1, p1, [I

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$f0;->b:[I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$f0;->c:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$f0;->d:Ljava/util/List;

    .line 6
    iput-object p2, p0, Ldev/duo/workspaceprobe/b$f0;->a:Ldev/duo/workspaceprobe/b$h0;

    return-void
.end method

.method static synthetic a(Ldev/duo/workspaceprobe/b$f0;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$f0;->b:[I

    return-object p0
.end method

.method static synthetic b(Ldev/duo/workspaceprobe/b$f0;)Ldev/duo/workspaceprobe/b$h0;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/workspaceprobe/b$f0;->a:Ldev/duo/workspaceprobe/b$h0;

    return-object p0
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    iget-object v0, v0, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class v1, Landroid/telephony/SubscriptionManager;

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-array v0, v1, [I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Ldev/duo/workspaceprobe/b$f0$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ldev/duo/workspaceprobe/b$f0$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Ldev/duo/workspaceprobe/b$f0$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ldev/duo/workspaceprobe/b$f0$$ExternalSyntheticLambda1;-><init>()V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-interface {v0, v2, v3}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 6
    :goto_0
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$f0;->b:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    move v2, v1

    .line 7
    :goto_1
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$f0;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Ldev/duo/workspaceprobe/b$f0;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Ldev/duo/workspaceprobe/b$f0;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$f0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 9
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$f0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 10
    iput-object v0, p0, Ldev/duo/workspaceprobe/b$f0;->b:[I

    .line 11
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$f0;->a:Ldev/duo/workspaceprobe/b$h0;

    const/4 v3, -0x1

    iput v3, v2, Ldev/duo/workspaceprobe/b$h0;->e0:I

    .line 12
    iput v3, v2, Ldev/duo/workspaceprobe/b$h0;->f0:I

    .line 13
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iput-boolean v4, v2, Ldev/duo/workspaceprobe/b$h0;->g0:Z

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM rows "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DuoRail"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object v2, p0, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    iget-object v2, v2, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 16
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 17
    aget v3, v0, v1

    .line 28
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 29
    new-instance v5, Ldev/duo/workspaceprobe/b$f0$a;

    invoke-direct {v5, p0, v1, v3}, Ldev/duo/workspaceprobe/b$f0$a;-><init>(Ldev/duo/workspaceprobe/b$f0;II)V

    .line 30
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    iget-object v3, v3, Ldev/duo/workspaceprobe/b;->p4:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v4, v3, v5}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 31
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$f0;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v3, p0, Ldev/duo/workspaceprobe/b$f0;->d:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 34
    :cond_4
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$f0;->e:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->S(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
