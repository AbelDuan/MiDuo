.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda71;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda71;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda71;->f$0:I

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$Zm6U9s9wWpZ-e4Ky35B5tuIRxZ8(ILdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
