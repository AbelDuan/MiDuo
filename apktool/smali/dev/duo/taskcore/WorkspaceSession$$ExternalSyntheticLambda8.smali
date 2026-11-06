.class public final synthetic Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;->f$0:I

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget v0, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;->f$0:I

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceSession$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    check-cast p1, Ldev/duo/taskcore/TaskBinding$Origin;

    invoke-static {v0, v1, p1}, Ldev/duo/taskcore/WorkspaceSession;->lambda$taskGone$8(ILjava/lang/Object;Ldev/duo/taskcore/TaskBinding$Origin;)Z

    move-result p1

    return p1
.end method
