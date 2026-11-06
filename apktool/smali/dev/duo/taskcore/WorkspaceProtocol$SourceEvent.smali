.class public final Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
.super Ljava/lang/Object;
.source "WorkspaceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceEvent"
.end annotation


# instance fields
.field public final epoch:J

.field public final event:I

.field public final foreground:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field public final kind:I

.field public final request:Landroid/os/IBinder;

.field public final returnedToMember:Z

.field public final startResult:I

.field public final target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field public final transition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->epoch:J

    iput p3, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->event:I

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->request:Landroid/os/IBinder;

    iput p5, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    iput p6, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->startResult:I

    .line 120
    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    iput-object p8, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-object p9, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->foreground:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-boolean p10, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->returnedToMember:Z

    .line 121
    return-void
.end method

.method static read(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
    .locals 11

    .line 130
    new-instance v0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->read(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v8

    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->read(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v9

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v10, p0

    invoke-direct/range {v0 .. v10}, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;-><init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V

    .line 130
    return-object v0
.end method


# virtual methods
.method write(Landroid/os/Parcel;)V
    .locals 2

    .line 124
    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->epoch:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->event:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->request:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->kind:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->startResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->transition:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->target:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->write(Landroid/os/Parcel;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->foreground:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->write(Landroid/os/Parcel;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;)V

    .line 126
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->returnedToMember:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void
.end method
