.class public final synthetic Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/u;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/u;Landroid/os/IBinder;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/u;

    iput-object p2, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iput-wide p3, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$0:Ldev/duo/hookprobe/u;

    iget-object v1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    iget-wide v2, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda0;->f$2:J

    invoke-static {v0, v1, v2, v3}, Ldev/duo/hookprobe/u;->$r8$lambda$_X0GOSGG8pU7VMnGOqmT7xQnv3s(Ldev/duo/hookprobe/u;Landroid/os/IBinder;J)V

    return-void
.end method
