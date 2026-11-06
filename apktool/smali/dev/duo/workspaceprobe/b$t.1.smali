.class Ldev/duo/workspaceprobe/b$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->n2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldev/duo/workspaceprobe/b;


# direct methods
.method constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->d0(Ldev/duo/workspaceprobe/b;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->e0(Ldev/duo/workspaceprobe/b;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->e0(Ldev/duo/workspaceprobe/b;)I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->e0(Ldev/duo/workspaceprobe/b;)I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 8
    :goto_0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->f0(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->g0(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-ne v0, p1, :cond_3

    :goto_1
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->f(Ldev/duo/workspaceprobe/b;Z)Z

    .line 10
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/b;->g(Ldev/duo/workspaceprobe/b;Z)Z

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1, v2}, Ldev/duo/workspaceprobe/b;->h(Ldev/duo/workspaceprobe/b;Z)Z

    .line 12
    :cond_4
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->R(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 13
    :cond_5
    :goto_2
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$t;->a:Ldev/duo/workspaceprobe/b;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid native fold classification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Ldev/duo/workspaceprobe/b;->a(Ldev/duo/workspaceprobe/b;Ljava/lang/Exception;)V

    return-void
.end method
