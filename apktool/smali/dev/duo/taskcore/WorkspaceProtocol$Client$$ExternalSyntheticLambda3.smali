.class public final synthetic Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceProtocol$Client$Writer;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final write(Landroid/os/Parcel;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$Client$$ExternalSyntheticLambda3;->f$0:Landroid/os/IBinder;

    invoke-static {v0, p1}, Ldev/duo/taskcore/WorkspaceProtocol$Client;->lambda$lookupSource$2(Landroid/os/IBinder;Landroid/os/Parcel;)V

    return-void
.end method
