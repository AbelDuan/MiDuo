.class Ldev/duo/hookprobe/U$f$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/U$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/U$f;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/U$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/U$f$a;->a:Ldev/duo/hookprobe/U$f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    .line 4
    iget-object v0, p0, Ldev/duo/hookprobe/U$f$a;->a:Ldev/duo/hookprobe/U$f;

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ldev/duo/hookprobe/U$f;->a(Ldev/duo/hookprobe/U$f;F)F

    .line 6
    :cond_0
    iget-object p1, p0, Ldev/duo/hookprobe/U$f$a;->a:Ldev/duo/hookprobe/U$f;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
