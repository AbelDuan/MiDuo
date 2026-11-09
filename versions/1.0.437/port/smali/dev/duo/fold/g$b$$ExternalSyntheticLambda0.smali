.class public final synthetic Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/fold/g$b;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/fold/g$b;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$0:Ldev/duo/fold/g$b;

    iput-object p2, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$0:Ldev/duo/fold/g$b;

    iget-object v1, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Runnable;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, v2, p1}, Ldev/duo/fold/g$b;->$r8$lambda$tkl2w52b-zK71DXMIo3H5ZogYBo(Ldev/duo/fold/g$b;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
