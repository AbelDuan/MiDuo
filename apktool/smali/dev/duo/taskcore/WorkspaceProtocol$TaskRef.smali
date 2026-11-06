.class public final Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;
.super Ljava/lang/Object;
.source "WorkspaceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskRef"
.end annotation


# instance fields
.field public final activityToken:Landroid/os/IBinder;

.field public final activityType:I

.field public final displayId:I

.field public final taskId:I

.field public final taskToken:Landroid/os/IBinder;

.field public final userId:I


# direct methods
.method public constructor <init>(IIIILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->userId:I

    iput p3, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->displayId:I

    iput p4, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityType:I

    .line 94
    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    iput-object p6, p0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityToken:Landroid/os/IBinder;

    .line 95
    return-void
.end method

.method static read(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;
    .locals 7

    .line 105
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 106
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;-><init>(IIIILandroid/os/IBinder;Landroid/os/IBinder;)V

    move-object p0, v0

    .line 105
    :goto_0
    return-object p0
.end method

.method static write(Landroid/os/Parcel;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;)V
    .locals 1

    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    if-nez p1, :cond_1

    return-void

    .line 100
    :cond_1
    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskId:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->userId:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->displayId:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityType:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->taskToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p1, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->activityToken:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 102
    return-void
.end method
