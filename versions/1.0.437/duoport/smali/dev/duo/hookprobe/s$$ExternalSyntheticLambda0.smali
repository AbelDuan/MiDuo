.class public final synthetic Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/s;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/s;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/s;

    iput-object p2, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/s;

    iget-object v1, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Ldev/duo/hookprobe/s;->$r8$lambda$z2MnhFnVhj1Tf_nWTL0Bd9hlB_U(Ldev/duo/hookprobe/s;Landroid/os/IBinder;)V

    return-void
.end method
