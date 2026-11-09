.class public final synthetic Ldev/duo/taskcore/k$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/h$b;

.field public final synthetic f$1:Ldev/duo/taskcore/k$b;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/h$b;Ldev/duo/taskcore/k$b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda4;->f$0:Ldev/duo/taskcore/h$b;

    iput-object p2, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda4;->f$1:Ldev/duo/taskcore/k$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda4;->f$0:Ldev/duo/taskcore/h$b;

    iget-object v1, p0, Ldev/duo/taskcore/k$$ExternalSyntheticLambda4;->f$1:Ldev/duo/taskcore/k$b;

    invoke-static {v0, v1}, Ldev/duo/taskcore/k;->$r8$lambda$WLXtPH6Saf_29A3HhBg0hRho1bs(Ldev/duo/taskcore/h$b;Ldev/duo/taskcore/k$b;)V

    return-void
.end method
