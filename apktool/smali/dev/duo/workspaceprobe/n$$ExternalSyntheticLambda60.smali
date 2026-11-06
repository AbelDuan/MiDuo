.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Ldev/duo/taskcore/SystemGate;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/SystemGate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;->f$1:Ldev/duo/taskcore/SystemGate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda60;->f$1:Ldev/duo/taskcore/SystemGate;

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$fHT5phvCi6ZsyJlY3VqUZK9eBus(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/SystemGate;)V

    return-void
.end method
