.class Ldev/duo/hookprobe/TentClockActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    iput-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/TentClockActivity;->b(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    :goto_0
    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->h(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;F)F

    .line 8
    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->i(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v5

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ldev/duo/hookprobe/TentClockActivity;->b(Ldev/duo/hookprobe/TentClockActivity;F)F

    .line 9
    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->j(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v2

    sub-float/2addr p1, v2

    mul-float/2addr v0, p1

    invoke-static {v1, v0}, Ldev/duo/hookprobe/TentClockActivity;->c(Ldev/duo/hookprobe/TentClockActivity;F)F

    .line 10
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->b(Ldev/duo/hookprobe/TentClockActivity;)Z

    move-result p1

    const-string v0, "DuoStandby"

    if-nez p1, :cond_2

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    .line 11
    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->h(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/TentClockActivity;->i(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v5, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v5}, Ldev/duo/hookprobe/TentClockActivity;->j(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    .line 12
    invoke-virtual {v6}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 13
    const-string v2, "Awake clock gravity first x=%.1f y=%.1f z=%.1f requested=%d"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1, v4}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;Z)Z

    .line 17
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->h(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto/16 :goto_2

    .line 18
    :cond_3
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->h(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    const/16 v3, 0x8

    .line 20
    :cond_4
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->k(Ldev/duo/hookprobe/TentClockActivity;)I

    move-result p1

    if-ne v3, p1, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->m(Ldev/duo/hookprobe/TentClockActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->l(Ldev/duo/hookprobe/TentClockActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1, v3}, Ldev/duo/hookprobe/TentClockActivity;->a(Ldev/duo/hookprobe/TentClockActivity;I)I

    .line 23
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    .line 24
    invoke-static {v1}, Ldev/duo/hookprobe/TentClockActivity;->h(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v2}, Ldev/duo/hookprobe/TentClockActivity;->i(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v4}, Ldev/duo/hookprobe/TentClockActivity;->j(Ldev/duo/hookprobe/TentClockActivity;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    if-nez v3, :cond_6

    .line 25
    const-string v5, "LANDSCAPE"

    goto :goto_1

    :cond_6
    const-string v5, "REVERSE_LANDSCAPE"

    :goto_1
    iget-object v6, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    .line 26
    invoke-virtual {v6}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v2, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 27
    const-string v2, "Awake clock gravity x=%.1f y=%.1f z=%.1f -> %s (requested %d)"

    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    if-eq v3, p1, :cond_7

    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {p1}, Ldev/duo/hookprobe/TentClockActivity;->m(Ldev/duo/hookprobe/TentClockActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity$a;->a:Ldev/duo/hookprobe/TentClockActivity;

    invoke-static {v0}, Ldev/duo/hookprobe/TentClockActivity;->l(Ldev/duo/hookprobe/TentClockActivity;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_2
    return-void
.end method
