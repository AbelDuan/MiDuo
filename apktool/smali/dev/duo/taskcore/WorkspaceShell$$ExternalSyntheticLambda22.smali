.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/duo/taskcore/WorkspaceProtocol$Client$Reader;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p1}, Ldev/duo/taskcore/TaskBinding$Snapshot;->read(Landroid/os/Parcel;)Ldev/duo/taskcore/TaskBinding$Snapshot;

    move-result-object p1

    return-object p1
.end method
