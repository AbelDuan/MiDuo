.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/j;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/j;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/j;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/j;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    invoke-static {v0, v1}, Ldev/duo/taskcore/j;->$r8$lambda$v4S4zAXv8YM6_OEvU6bjL1rktlA(Ldev/duo/taskcore/j;Ljava/util/Set;)V

    return-void
.end method
