.class public final synthetic Ldev/duo/taskcore/WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0;->f$1:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$1$$ExternalSyntheticLambda0;->f$1:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceProtocol$Client$1;->lambda$onTransact$0(Ljava/util/function/Consumer;Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V

    return-void
.end method
