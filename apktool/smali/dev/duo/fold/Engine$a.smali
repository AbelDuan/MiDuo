.class Ldev/duo/fold/Engine$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/fold/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/fold/Engine;


# direct methods
.method public static synthetic $r8$lambda$xmHQLUhKEgYgPDFg4Yz_iZaK9r8(Ldev/duo/fold/Engine$a;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/duo/fold/Engine$a;->a(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method constructor <init>(Ldev/duo/fold/Engine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/hardware/SensorEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v2, 0xf4240

    div-long v6, v0, v2

    .line 2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Z)Z

    .line 4
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {v0}, Ldev/duo/fold/Engine;->m(Ldev/duo/fold/Engine;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v2}, Ldev/duo/fold/Engine;->d(Ldev/duo/fold/Engine;Z)Z

    .line 5
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->h(Ldev/duo/fold/Engine;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->n(Ldev/duo/fold/Engine;)Ldev/duo/fold/Engine$f;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->o(Ldev/duo/fold/Engine;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1fa269d

    if-ne v0, v1, :cond_8

    .line 8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v0

    const/4 v3, 0x3

    if-le v1, v3, :cond_7

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->p(Ldev/duo/fold/Engine;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v0, v2}, Ldev/duo/fold/Engine;->e(Ldev/duo/fold/Engine;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9996\u4e2aHall level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/fold/Engine;->a(Ljava/lang/String;)V

    .line 10
    :cond_2
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->q(Ldev/duo/fold/Engine;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hall \u5524\u9192\u540e\u9996\u6837\u672c ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ldev/duo/fold/Engine;->a()J

    move-result-wide v4

    iget-object v1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v1}, Ldev/duo/fold/Engine;->q(Ldev/duo/fold/Engine;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldev/duo/fold/Engine;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    const-wide/16 v4, -0x1

    invoke-static {v0, v4, v5}, Ldev/duo/fold/Engine;->b(Ldev/duo/fold/Engine;J)J

    .line 12
    :cond_3
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;)Ldev/duo/fold/f;

    move-result-object v4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, p1, v3

    invoke-static {}, Ldev/duo/fold/Engine;->a()J

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ldev/duo/fold/f;->a(FJJ)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return-void

    .line 13
    :cond_5
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->b(Ldev/duo/fold/Engine;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1, v2}, Ldev/duo/fold/Engine;->b(Ldev/duo/fold/Engine;Z)Z

    const-string p1, "Hall \u6570\u636e\u6062\u590d\uff0c\u7b49\u5f85\u4e0b\u4e00\u6b21\u5f00\u5408"

    invoke-static {p1}, Ldev/duo/fold/Engine;->a(Ljava/lang/String;)V

    .line 14
    :cond_6
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->c(Ldev/duo/fold/Engine;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->d(Ldev/duo/fold/Engine;)V

    goto :goto_0

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Hall \u6570\u636e\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v0

    if-eqz v1, :cond_a

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {v0}, Ldev/duo/fold/Engine;->e(Ldev/duo/fold/Engine;)Ldev/duo/fold/c;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-virtual {v0, p1, v6, v7}, Ldev/duo/fold/c;->a(FJ)V

    .line 25
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {}, Ldev/duo/fold/Engine;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;J)J

    .line 26
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->f(Ldev/duo/fold/Engine;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    const-string v0, "\u94f0\u94fe\u53d8\u5316"

    invoke-static {p1, v0}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ljava/lang/String;)V

    .line 28
    :cond_9
    :goto_0
    iget-object p1, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    invoke-static {p1}, Ldev/duo/fold/Engine;->g(Ldev/duo/fold/Engine;)V

    return-void

    .line 29
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u94f0\u94fe\u6570\u636e\u65e0\u6548"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/fold/Engine$a;->a:Ldev/duo/fold/Engine;

    new-instance v1, Ldev/duo/fold/Engine$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/duo/fold/Engine$a$$ExternalSyntheticLambda0;-><init>(Ldev/duo/fold/Engine$a;Landroid/hardware/SensorEvent;)V

    invoke-static {v0, v1}, Ldev/duo/fold/Engine;->a(Ldev/duo/fold/Engine;Ldev/duo/fold/Engine$e;)V

    return-void
.end method
