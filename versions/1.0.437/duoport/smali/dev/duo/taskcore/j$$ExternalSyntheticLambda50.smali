.class public final synthetic Ldev/duo/taskcore/j$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell$Events;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda50;->f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

    iput p2, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda50;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda50;->f$0:Ldev/duo/taskcore/WorkspaceShell$Events;

    iget v1, p0, Ldev/duo/taskcore/j$$ExternalSyntheticLambda50;->f$1:I

    invoke-static {v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->$r8$lambda$aizq_h8vWqZtpOTmEe0FWZt1mLc(Ldev/duo/taskcore/WorkspaceShell$Events;I)V

    return-void
.end method
