.class public final synthetic Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Ldev/duo/fold/g$b;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/fold/g$b;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;->f$0:Ldev/duo/fold/g$b;

    iput-object p2, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;->f$0:Ldev/duo/fold/g$b;

    iget-object v1, p0, Ldev/duo/fold/g$b$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ldev/duo/fold/g$b;->$r8$lambda$wO1kUGrsCnTmwsAGJS9XQioi3Uc(Ldev/duo/fold/g$b;Ljava/lang/Runnable;)V

    return-void
.end method
