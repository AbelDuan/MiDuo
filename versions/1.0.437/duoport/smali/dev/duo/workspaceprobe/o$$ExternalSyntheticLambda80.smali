.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/SystemGate;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/SystemGate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda80;->f$0:Ldev/duo/taskcore/SystemGate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda80;->f$0:Ldev/duo/taskcore/SystemGate;

    check-cast p1, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static {v0, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$hvIc3ljfncv8DsoMYfKrx0jTGtY(Ldev/duo/taskcore/SystemGate;Ldev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
