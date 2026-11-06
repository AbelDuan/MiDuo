.class Ldev/duo/workspaceprobe/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/workspaceprobe/b;->f2()V
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
    iput-object p1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->b(Ldev/duo/workspaceprobe/b;F)F

    .line 2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->B(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->C(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->D(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->E(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    iget-boolean v1, v0, Ldev/duo/workspaceprobe/b;->L1:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->G(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    iget-boolean v1, v0, Ldev/duo/workspaceprobe/b;->N1:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->I(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/c;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ldev/duo/workspaceprobe/c;->a(FJ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->J(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->H(Ldev/duo/workspaceprobe/b;)V

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->B(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->K(Ldev/duo/workspaceprobe/b;)I

    move-result v0

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    iget v3, v1, Ldev/duo/workspaceprobe/b;->G1:I

    if-ne v0, v3, :cond_5

    iget-boolean v0, v1, Ldev/duo/workspaceprobe/b;->I1:Z

    if-nez v0, :cond_5

    iget-boolean v0, v1, Ldev/duo/workspaceprobe/b;->L1:Z

    if-nez v0, :cond_5

    .line 15
    invoke-static {v1}, Ldev/duo/workspaceprobe/b;->G(Ldev/duo/workspaceprobe/b;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    iget-boolean v1, v0, Ldev/duo/workspaceprobe/b;->N1:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    invoke-static {v0}, Ldev/duo/workspaceprobe/b;->I(Ldev/duo/workspaceprobe/b;)Ldev/duo/workspaceprobe/c;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Ldev/duo/workspaceprobe/c;->a(FJ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->L(Ldev/duo/workspaceprobe/b;)V

    :cond_4
    return-void

    .line 20
    :cond_5
    :goto_1
    iget-object p1, p0, Ldev/duo/workspaceprobe/b$g;->a:Ldev/duo/workspaceprobe/b;

    invoke-static {p1}, Ldev/duo/workspaceprobe/b;->H(Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
