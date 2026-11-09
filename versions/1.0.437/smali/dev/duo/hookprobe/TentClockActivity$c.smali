.class Ldev/duo/hookprobe/TentClockActivity$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/hookprobe/TentClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/TentClockActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$c;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$c;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->c(Ldev/duo/hookprobe/TentClockActivity;)Ldev/duo/hookprobe/TentClockActivity$f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$c;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->c(Ldev/duo/hookprobe/TentClockActivity;)Ldev/duo/hookprobe/TentClockActivity$f;

    move-result-object p1

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {p1, v0, v1}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Ldev/duo/hookprobe/TentClockActivity$f;J)J

    .line 5
    :cond_1
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$c;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->n(Ldev/duo/hookprobe/TentClockActivity;)V

    return-void

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$c;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;Ljava/lang/String;)V

    return-void
.end method
