.class public final Ldev/duo/hookprobe/TentClockActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/hookprobe/TentClockActivity$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.lsposed.miduo.awake.HOST"

.field public static final b:Ljava/lang/String; = "com.lsposed.miduo.awake.STOP"

.field public static final c:Ljava/lang/String; = "com.lsposed.miduo.awake.LIFE"

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field private static final i:F = 3.0f


# instance fields
.field private A:J

.field private B:Landroid/hardware/SensorManager;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:J

.field private G:Z

.field private H:I

.field private final I:Ljava/lang/Runnable;

.field private J:F

.field private K:F

.field private L:F

.field private M:Z

.field private final N:Landroid/hardware/SensorEventListener;

.field private final O:Landroid/os/IBinder$DeathRecipient;

.field private final P:Ljava/lang/Runnable;

.field private final Q:Landroid/content/BroadcastReceiver;

.field private final R:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final j:Landroid/os/Handler;

.field private final k:Landroid/os/IBinder;

.field private l:Landroid/os/IBinder;

.field private m:Landroid/os/ResultReceiver;

.field private n:Ldev/duo/hookprobe/TentClockActivity$f;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:F

.field private x:F

.field private y:I

.field private z:J


# direct methods
.method public static synthetic $r8$lambda$B9yg73QGQN_7wK8uCKhm5EZbK7c(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKe6xkHJTIG5FQKfwe0LtwsDPwE(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$Y4T0eUhnfRue1YixhgyWVL90cQg(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->e()V

    return-void
.end method

.method public static synthetic $r8$lambda$wjf0YnUGaIDM4WT2SAQf_vmN7xA(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->d()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    .line 7
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->k:Landroid/os/IBinder;

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity;->z:J

    .line 23
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity;->F:J

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Ldev/duo/hookprobe/TentClockActivity;->H:I

    .line 26
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda1;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->I:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$a;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$a;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->N:Landroid/hardware/SensorEventListener;

    .line 66
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda2;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->O:Landroid/os/IBinder$DeathRecipient;

    .line 67
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$b;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$b;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->P:Ljava/lang/Runnable;

    .line 72
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$c;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$c;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->Q:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$d;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$d;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->R:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity;F)F
    .locals 1

    .line 3
    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity;->J:F

    add-float/2addr v0, p1

    iput v0, p0, Ldev/duo/hookprobe/TentClockActivity;->J:F

    return v0
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity;I)I
    .locals 0

    .line 4
    iput p1, p0, Ldev/duo/hookprobe/TentClockActivity;->H:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 6
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity;->F:J

    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    .line 36
    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->v:Z

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    .line 37
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    .line 38
    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 40
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Awake clock exit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " displayed="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DuoStandby"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->m:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    iget-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    if-nez v1, :cond_3

    .line 9
    iget-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->D:Z

    if-eqz p1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    const-class p1, Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->B:Landroid/hardware/SensorManager;

    .line 12
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->B:Landroid/hardware/SensorManager;

    iget-object v2, p0, Ldev/duo/hookprobe/TentClockActivity;->N:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, p1, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    iput-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    return-void

    :cond_2
    :goto_0
    nop

    .line 20
    iput-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->D:Z

    .line 21
    const-string p1, "DuoStandby"

    const-string v0, "Awake clock rotation sensor unavailable, fixed orientation kept"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez p1, :cond_5

    .line 26
    iget-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    if-eqz p1, :cond_4

    .line 27
    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    .line 28
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->B:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->N:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 30
    :cond_4
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    const/4 p1, -0x1

    iput p1, p0, Ldev/duo/hookprobe/TentClockActivity;->H:I

    .line 32
    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->M:Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    return p0
.end method

.method static synthetic a(Ldev/duo/hookprobe/TentClockActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->M:Z

    return p1
.end method

.method static synthetic b(Ldev/duo/hookprobe/TentClockActivity;F)F
    .locals 1

    .line 3
    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity;->K:F

    add-float/2addr v0, p1

    iput v0, p0, Ldev/duo/hookprobe/TentClockActivity;->K:F

    return v0
.end method

.method private synthetic b()V
    .locals 2

    .line 4
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Ldev/duo/hookprobe/TentClockActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/hookprobe/TentClockActivity;->M:Z

    return p0
.end method

.method static synthetic b(Ldev/duo/hookprobe/TentClockActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->p:Z

    return p1
.end method

.method static synthetic c(Ldev/duo/hookprobe/TentClockActivity;F)F
    .locals 1

    .line 2
    iget v0, p0, Ldev/duo/hookprobe/TentClockActivity;->L:F

    add-float/2addr v0, p1

    iput v0, p0, Ldev/duo/hookprobe/TentClockActivity;->L:F

    return v0
.end method

.method static synthetic c(Ldev/duo/hookprobe/TentClockActivity;)Ldev/duo/hookprobe/TentClockActivity$f;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    return-object p0
.end method

.method private synthetic c()V
    .locals 1

    .line 3
    const-string v0, "host_died"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    new-instance v1, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda3;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic d(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->a()V

    return-void
.end method

.method private synthetic e()V
    .locals 1

    .line 2
    const-string v0, "back"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Ldev/duo/hookprobe/TentClockActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    return p0
.end method

.method private f()Z
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-static {v2, v3}, Ldev/duo/hookprobe/E;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0

    .line 16
    :cond_1
    iget-boolean v2, p0, Ldev/duo/hookprobe/TentClockActivity;->E:Z

    if-nez v2, :cond_4

    .line 17
    const/4 v2, 0x1

    iput-boolean v2, p0, Ldev/duo/hookprobe/TentClockActivity;->E:Z

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Awake clock panel mismatch display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "null"

    if-nez v0, :cond_2

    .line 19
    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_3

    .line 20
    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "DuoStandby"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Ldev/duo/hookprobe/TentClockActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldev/duo/hookprobe/TentClockActivity;->p:Z

    return p0
.end method

.method private g()Z
    .locals 6

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Ldev/duo/hookprobe/TentClockActivity;->F:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->f()Z

    move-result v2

    iput-boolean v2, p0, Ldev/duo/hookprobe/TentClockActivity;->G:Z

    .line 5
    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity;->F:J

    .line 7
    :cond_1
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->G:Z

    return v0
.end method

.method static synthetic g(Ldev/duo/hookprobe/TentClockActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Ldev/duo/hookprobe/TentClockActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/TentClockActivity;->J:F

    return p0
.end method

.method private h()V
    .locals 18

    .line 2
    move-object/from16 v0, p0

    iget-object v1, v0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    iget-object v2, v0, Ldev/duo/hookprobe/TentClockActivity;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v1, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 6
    :cond_0
    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-nez v1, :cond_1

    invoke-direct {v0}, Ldev/duo/hookprobe/TentClockActivity;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "screen_or_unlock"

    invoke-direct {v0, v1}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->p:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 9
    :goto_0
    iget-object v4, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-virtual {v4, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 10
    invoke-direct {v0, v1}, Ldev/duo/hookprobe/TentClockActivity;->a(Z)V

    .line 11
    iget-boolean v4, v0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-eqz v4, :cond_3

    move v1, v2

    .line 12
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 13
    iget-boolean v6, v0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_4

    move-wide v9, v7

    goto :goto_1

    :cond_4
    iget-wide v9, v0, Ldev/duo/hookprobe/TentClockActivity;->A:J

    sub-long v9, v4, v9

    .line 14
    :goto_1
    iget-wide v11, v0, Ldev/duo/hookprobe/TentClockActivity;->z:J

    cmp-long v7, v11, v7

    if-gez v7, :cond_5

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_2

    :cond_5
    sub-long v7, v4, v11

    :goto_2
    const/4 v11, 0x2

    if-eqz v1, :cond_7

    if-nez v6, :cond_6

    const-wide/16 v12, 0xbb8

    cmp-long v6, v7, v12

    if-gez v6, :cond_7

    :cond_6
    move v6, v11

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    const-wide/16 v12, 0x61a8

    cmp-long v6, v7, v12

    if-gez v6, :cond_8

    move v6, v3

    goto :goto_3

    :cond_8
    move v6, v2

    .line 17
    :goto_3
    iget-object v12, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-static {v12}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Ldev/duo/hookprobe/TentClockActivity$f;)I

    move-result v12

    if-ne v12, v11, :cond_9

    goto :goto_4

    :cond_9
    move v2, v6

    .line 18
    :goto_4
    iget-object v6, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-static {v6, v2}, Ldev/duo/hookprobe/TentClockActivity$f;->b(Ldev/duo/hookprobe/TentClockActivity$f;I)I

    .line 19
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x24

    if-lt v6, v12, :cond_d

    if-nez v1, :cond_a

    const/high16 v6, 0x7fc00000    # Float.NaN

    goto :goto_5

    :cond_a
    if-ne v2, v11, :cond_b

    const/high16 v6, 0x42700000    # 60.0f

    goto :goto_5

    :cond_b
    if-ne v2, v3, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_c
    const v6, 0x3c888889

    .line 21
    :goto_5
    iget-object v12, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-virtual {v12}, Landroid/view/View;->getRequestedFrameRate()F

    move-result v12

    cmpl-float v12, v12, v6

    if-eqz v12, :cond_d

    iget-object v12, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-virtual {v12, v6}, Landroid/view/View;->setRequestedFrameRate(F)V

    :cond_d
    if-eqz v1, :cond_16

    const-wide/32 v12, 0x493e0

    cmp-long v1, v9, v12

    const v6, 0x3da3d70a    # 0.08f

    if-gtz v1, :cond_e

    goto :goto_6

    :cond_e
    const-wide/32 v14, 0xdbba0

    cmp-long v1, v9, v14

    if-ltz v1, :cond_f

    const v6, 0x3cf5c28f    # 0.03f

    goto :goto_6

    :cond_f
    sub-long/2addr v9, v12

    long-to-float v1, v9

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v9

    const v9, 0x49127c00    # 600000.0f

    div-float/2addr v1, v9

    sub-float/2addr v6, v1

    .line 26
    :goto_6
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 27
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v9, v9, v6

    if-eqz v9, :cond_10

    .line 28
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 29
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    :cond_10
    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    if-nez v1, :cond_11

    .line 32
    iput-boolean v3, v0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    .line 33
    iget-object v1, v0, Ldev/duo/hookprobe/TentClockActivity;->m:Landroid/os/ResultReceiver;

    const/4 v6, 0x5

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v9}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 35
    :cond_11
    iget-object v1, v0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-ne v2, v11, :cond_12

    const-wide/16 v9, 0x3c

    mul-long v12, v4, v9

    .line 37
    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/16 v16, 0x1

    add-long v12, v12, v16

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x3b

    add-long/2addr v12, v14

    div-long/2addr v12, v9

    sub-long/2addr v12, v4

    goto :goto_8

    :cond_12
    if-ne v2, v3, :cond_13

    .line 38
    const/16 v1, 0x3e8

    invoke-static {v9, v10, v1}, Ljava/lang/Math;->floorMod(JI)I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_7

    :cond_13
    const v1, 0xea60

    invoke-static {v9, v10, v1}, Ljava/lang/Math;->floorMod(JI)I

    move-result v3

    sub-int/2addr v1, v3

    :goto_7
    int-to-long v12, v1

    .line 39
    :goto_8
    iget-boolean v1, v0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    if-nez v1, :cond_15

    if-eqz v2, :cond_15

    if-ne v2, v11, :cond_14

    const/16 v1, 0xbb8

    goto :goto_9

    :cond_14
    const/16 v1, 0x61a8

    :goto_9
    int-to-long v1, v1

    sub-long/2addr v1, v7

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 40
    :cond_15
    iget-object v1, v0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    iget-object v0, v0, Ldev/duo/hookprobe/TentClockActivity;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_a
    return-void
.end method

.method static synthetic i(Ldev/duo/hookprobe/TentClockActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/TentClockActivity;->K:F

    return p0
.end method

.method static synthetic j(Ldev/duo/hookprobe/TentClockActivity;)F
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/TentClockActivity;->L:F

    return p0
.end method

.method static synthetic k(Ldev/duo/hookprobe/TentClockActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Ldev/duo/hookprobe/TentClockActivity;->H:I

    return p0
.end method

.method static synthetic l(Ldev/duo/hookprobe/TentClockActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/hookprobe/TentClockActivity;->I:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic m(Ldev/duo/hookprobe/TentClockActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Ldev/duo/hookprobe/TentClockActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_c

    .line 4
    iget-boolean v3, p0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-nez v4, :cond_1

    .line 7
    iput-boolean v2, p0, Ldev/duo/hookprobe/TentClockActivity;->v:Z

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Ldev/duo/hookprobe/TentClockActivity;->w:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Ldev/duo/hookprobe/TentClockActivity;->x:F

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    iput v7, p0, Ldev/duo/hookprobe/TentClockActivity;->y:I

    goto :goto_3

    :cond_1
    if-eq v4, v6, :cond_5

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    if-ne v4, v2, :cond_6

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Ldev/duo/hookprobe/TentClockActivity;->w:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Ldev/duo/hookprobe/TentClockActivity;->x:F

    sub-float/2addr v8, v9

    .line 14
    iget-boolean v9, p0, Ldev/duo/hookprobe/TentClockActivity;->v:Z

    if-eqz v9, :cond_4

    iget v9, p0, Ldev/duo/hookprobe/TentClockActivity;->y:I

    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    if-ne v9, v10, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x42800000    # 64.0f

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 15
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v10

    cmpl-float v8, v9, v8

    if-lez v8, :cond_4

    iget-object v8, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gez v7, :cond_3

    move v7, v2

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    invoke-static {v8, v7}, Ldev/duo/hookprobe/TentClockActivity$f;->a(Ldev/duo/hookprobe/TentClockActivity$f;I)V

    :cond_4
    nop

    .line 16
    iput-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->v:Z

    goto :goto_3

    :cond_5
    :goto_2
    nop

    .line 17
    iput-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->v:Z

    :cond_6
    :goto_3
    const/4 v7, 0x2

    if-eqz v4, :cond_9

    if-eq v4, v6, :cond_9

    if-ne v4, v7, :cond_7

    goto :goto_4

    :cond_7
    if-eq v4, v2, :cond_8

    if-ne v4, v5, :cond_a

    .line 26
    :cond_8
    iput-boolean v1, p0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    goto :goto_5

    :cond_9
    :goto_4
    nop

    .line 27
    iput-boolean v2, p0, Ldev/duo/hookprobe/TentClockActivity;->u:Z

    .line 29
    :cond_a
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Ldev/duo/hookprobe/TentClockActivity;->A:J

    iput-wide v5, p0, Ldev/duo/hookprobe/TentClockActivity;->z:J

    if-ne v4, v7, :cond_b

    if-nez v3, :cond_c

    .line 30
    :cond_b
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    .line 32
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_e

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    return v1

    :cond_e
    :goto_6
    return v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Landroid/os/ResultReceiver;

    const-string v2, "com.lsposed.miduo.awake.HOST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->m:Landroid/os/ResultReceiver;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.lsposed.miduo.awake.LIFE"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->l:Landroid/os/IBinder;

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->m:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->f()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 8
    :cond_1
    :try_start_0
    iget-object p1, p0, Ldev/duo/hookprobe/TentClockActivity;->l:Landroid/os/IBinder;

    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->O:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->t:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 18
    const v1, 0x3da3d70a    # 0.08f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 19
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldev/duo/hookprobe/TentClockActivity;->A:J

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setFrameRateBoostOnTouchEnabled(Z)V

    .line 23
    :cond_2
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-direct {v0, p0}, Ldev/duo/hookprobe/TentClockActivity$f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    .line 24
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->n:Ldev/duo/hookprobe/TentClockActivity$f;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    new-instance v4, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Ldev/duo/hookprobe/TentClockActivity$$ExternalSyntheticLambda0;-><init>(Ldev/duo/hookprobe/TentClockActivity;)V

    invoke-interface {v0, v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 29
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 30
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    iget-object v4, p0, Ldev/duo/hookprobe/TentClockActivity;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 37
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->R:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 38
    iput-boolean p1, p0, Ldev/duo/hookprobe/TentClockActivity;->s:Z

    .line 39
    new-instance v0, Ldev/duo/hookprobe/TentClockActivity$e;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->j:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Ldev/duo/hookprobe/TentClockActivity$e;-><init>(Ldev/duo/hookprobe/TentClockActivity;Landroid/os/Handler;)V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    iget-object v4, p0, Ldev/duo/hookprobe/TentClockActivity;->k:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 52
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 54
    :try_start_1
    invoke-virtual {v0, v2, v3}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    const-string v0, "com.lsposed.miduo.awake.STOP"

    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 58
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->m:Landroid/os/ResultReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 59
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p1

    :catch_0
    move-exception p1

    .line 60
    iput-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->l:Landroid/os/IBinder;

    .line 61
    const-string p1, "host_already_dead"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void

    .line 62
    :cond_3
    :goto_1
    const-string p1, "invalid_start"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->s:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->R:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/duo/hookprobe/TentClockActivity;->l:Landroid/os/IBinder;

    iget-object v1, p0, Ldev/duo/hookprobe/TentClockActivity;->O:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6
    :cond_1
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    .line 2
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    .line 3
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    if-eqz v0, :cond_0

    const-string v0, "pause"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    .line 4
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->a()V

    .line 5
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->o:Z

    .line 2
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    .line 3
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    if-eqz v0, :cond_0

    const-string v0, "stop"

    invoke-direct {p0, v0}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-boolean v0, p0, Ldev/duo/hookprobe/TentClockActivity;->q:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-string p1, "focus_lost"

    invoke-direct {p0, p1}, Ldev/duo/hookprobe/TentClockActivity;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Ldev/duo/hookprobe/TentClockActivity;->h()V

    return-void
.end method
