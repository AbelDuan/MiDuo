.class Ldev/duo/hookprobe/p$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/p;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$JM_XDxF_tsi3ockcYNvJqetYHlQ(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Ldev/duo/hookprobe/p$a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ldev/duo/hookprobe/p;->a(Z)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Ldev/duo/hookprobe/p$a$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Ldev/duo/hookprobe/p$a$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    const-string p2, "screen"

    invoke-static {p2, p1}, Ldev/duo/hookprobe/p;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
