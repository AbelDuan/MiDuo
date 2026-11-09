.class public final synthetic Ldev/duo/taskcore/k$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/k;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/k;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda17;->f$0:Ldev/duo/taskcore/k;

    iput-object p2, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda17;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda17;->f$0:Ldev/duo/taskcore/k;

    iget-object v1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda17;->f$1:Landroid/os/IBinder;

    invoke-static {v0, v1}, Ldev/duo/taskcore/k;->$r8$lambda$LrkNJ_FIQouahoZger56S5m6h9g(Ldev/duo/taskcore/k;Landroid/os/IBinder;)V

    return-void
.end method
