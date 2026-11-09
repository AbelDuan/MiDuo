.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/j;

.field public final synthetic f$1:Ldev/duo/taskcore/d;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/j;Ldev/duo/taskcore/d;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda41;->f$0:Ldev/duo/taskcore/j;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda41;->f$1:Ldev/duo/taskcore/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda41;->f$0:Ldev/duo/taskcore/j;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda41;->f$1:Ldev/duo/taskcore/d;

    invoke-static {v0, v1}, Ldev/duo/taskcore/j;->$r8$lambda$LstnsyRQQsfCa_519fkG8N-i3ek(Ldev/duo/taskcore/j;Ldev/duo/taskcore/d;)V

    return-void
.end method
