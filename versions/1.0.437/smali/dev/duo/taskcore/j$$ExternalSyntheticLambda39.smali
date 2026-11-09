.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/g;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ldev/duo/taskcore/d;

.field public final synthetic f$3:[Ldev/duo/taskcore/d;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/g;Ljava/lang/Runnable;Ldev/duo/taskcore/d;[Ldev/duo/taskcore/d;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$0:Ldev/duo/taskcore/g;

    iput-object p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$2:Ldev/duo/taskcore/d;

    iput-object p4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$3:[Ldev/duo/taskcore/d;

    iput-boolean p5, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$0:Ldev/duo/taskcore/g;

    iget-object v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$2:Ldev/duo/taskcore/d;

    iget-object v3, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$3:[Ldev/duo/taskcore/d;

    iget-boolean v4, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda39;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Ldev/duo/taskcore/j;->$r8$lambda$sLbg8d1rxUdSCKMjrpBOOti9Opw(Ldev/duo/taskcore/g;Ljava/lang/Runnable;Ldev/duo/taskcore/d;[Ldev/duo/taskcore/d;Z)V

    return-void
.end method
