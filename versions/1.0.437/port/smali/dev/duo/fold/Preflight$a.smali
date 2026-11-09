.class Ldev/duo/fold/Preflight$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/fold/Preflight;->a(Landroid/hardware/SensorManager;)[Lorg/json/JSONArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:[Z

.field final synthetic c:[Landroid/hardware/Sensor;

.field final synthetic d:[J

.field final synthetic e:[Z

.field final synthetic f:[I

.field final synthetic g:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Z[Landroid/hardware/Sensor;[J[Z[ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/fold/Preflight$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldev/duo/fold/Preflight$a;->b:[Z

    iput-object p3, p0, Ldev/duo/fold/Preflight$a;->c:[Landroid/hardware/Sensor;

    iput-object p4, p0, Ldev/duo/fold/Preflight$a;->d:[J

    iput-object p5, p0, Ldev/duo/fold/Preflight$a;->e:[Z

    iput-object p6, p0, Ldev/duo/fold/Preflight$a;->f:[I

    iput-object p7, p0, Ldev/duo/fold/Preflight$a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    .line 1
    iget-object v0, p0, Ldev/duo/fold/Preflight$a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ldev/duo/fold/Preflight$a;->b:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_8

    .line 3
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v7, p0, Ldev/duo/fold/Preflight$a;->c:[Landroid/hardware/Sensor;

    aget-object v7, v7, v1

    if-ne v6, v7, :cond_7

    .line 4
    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 5
    iget-object v10, p0, Ldev/duo/fold/Preflight$a;->d:[J

    aget-wide v11, v10, v1

    cmp-long v11, v6, v11

    if-lez v11, :cond_6

    cmp-long v11, v6, v8

    if-gtz v11, :cond_6

    sub-long/2addr v8, v6

    const-wide/16 v11, 0x3e8

    cmp-long v8, v8, v11

    if-ltz v8, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    aput-wide v6, v10, v1

    if-ne v1, v5, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v2

    .line 8
    :goto_1
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v8, v7

    if-le v8, v6, :cond_5

    aget v7, v7, v6

    invoke-static {v7}, Ljava/lang/Float;->isFinite(F)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    if-nez v1, :cond_3

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v6

    cmpg-float v9, v8, v7

    if-ltz v9, :cond_5

    const/high16 v9, 0x43340000    # 180.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_5

    :cond_3
    if-ne v1, v3, :cond_4

    .line 9
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v8, v6

    cmpg-float v7, v6, v7

    if-ltz v7, :cond_5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 11
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    cmpl-float p1, v6, p1

    if-lez p1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    iget-object p1, p0, Ldev/duo/fold/Preflight$a;->f:[I

    aget v6, p1, v1

    add-int/2addr v6, v5

    aput v6, p1, v1

    goto :goto_4

    .line 13
    :cond_5
    :goto_2
    iget-object p1, p0, Ldev/duo/fold/Preflight$a;->e:[Z

    aput-boolean v5, p1, v1

    goto :goto_4

    .line 14
    :cond_6
    :goto_3
    monitor-exit v0

    return-void

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    nop

    :goto_5
    if-ge v2, v4, :cond_b

    .line 23
    iget-object p1, p0, Ldev/duo/fold/Preflight$a;->c:[Landroid/hardware/Sensor;

    aget-object p1, p1, v2

    if-eqz p1, :cond_a

    iget-object v1, p0, Ldev/duo/fold/Preflight$a;->e:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_a

    iget-object v1, p0, Ldev/duo/fold/Preflight$a;->f:[I

    aget v1, v1, v2

    .line 24
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result p1

    if-nez p1, :cond_9

    move p1, v3

    goto :goto_6

    :cond_9
    move p1, v5

    :goto_6
    if-ge v1, p1, :cond_a

    monitor-exit v0

    return-void

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 25
    :cond_b
    iget-object p1, p0, Ldev/duo/fold/Preflight$a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 26
    monitor-exit v0

    return-void

    .line 2
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
