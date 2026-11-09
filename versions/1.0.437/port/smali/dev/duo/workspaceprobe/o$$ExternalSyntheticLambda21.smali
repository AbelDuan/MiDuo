.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda21;->f$0:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda21;->f$0:Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$jDe1tGIqdm1RNUV29w1R7DYaN-o(Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
