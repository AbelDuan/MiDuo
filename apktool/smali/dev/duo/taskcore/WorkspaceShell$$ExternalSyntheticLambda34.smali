.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda34;->f$0:I

    return-void
.end method


# virtual methods
.method public final write(Landroid/os/Parcel;)V
    .locals 1

    .line 0
    iget v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda34;->f$0:I

    invoke-static {v0, p1}, Ldev/duo/taskcore/WorkspaceShell;->lambda$serverOpen$37(ILandroid/os/Parcel;)V

    return-void
.end method
