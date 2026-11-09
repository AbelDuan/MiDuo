.class Ldev/duo/hookprobe/TentClockActivity$e;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/TentClockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/hookprobe/TentClockActivity;


# direct methods
.method constructor <init>(Ldev/duo/hookprobe/TentClockActivity;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    const-string p2, "host_stop"

    invoke-static {p1, p2}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 2
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->e(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->f(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->g(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    const-string p2, "invalid_show"

    invoke-static {p1, p2}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ldev/duo/hookprobe/TentClockActivity;->b(Ldev/duo/hookprobe/TentClockActivity;Z)Z

    .line 5
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->c(Ldev/duo/hookprobe/TentClockActivity;)Ldev/duo/hookprobe/TentClockActivity$f;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$e;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->n(Ldev/duo/hookprobe/TentClockActivity;)V

    :cond_2
    return-void
.end method
