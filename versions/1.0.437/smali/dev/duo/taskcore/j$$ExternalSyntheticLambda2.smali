.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/j;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/j;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda2;->f$0:Ldev/duo/taskcore/j;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda2;->f$0:Ldev/duo/taskcore/j;

    invoke-static {v0, p1}, Ldev/duo/taskcore/j;->$r8$lambda$scoOZ5ffPMmDy-8oNWFhibUPGow(Ldev/duo/taskcore/j;Ljava/lang/Runnable;)V

    return-void
.end method
