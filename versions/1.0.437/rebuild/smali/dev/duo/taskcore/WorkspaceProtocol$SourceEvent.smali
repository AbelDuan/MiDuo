.class public final Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceEvent"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/os/IBinder;

.field public final f:Landroid/os/IBinder;

.field public final g:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field public final h:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

.field public final i:Z


# direct methods
.method public constructor <init>(JILandroid/os/IBinder;IILandroid/os/IBinder;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->a:J

    iput p3, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->b:I

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->e:Landroid/os/IBinder;

    iput p5, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->c:I

    iput p6, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->d:I

    .line 3
    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->f:Landroid/os/IBinder;

    iput-object p8, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->g:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-object p9, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->h:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    iput-boolean p10, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->i:Z

    return-void
.end method

.method static a(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;
    .locals 11

    .line 1
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

    .line 2
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->a(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    move-result-object v8

    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->a(Landroid/os/Parcel;)Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

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

    return-object v0
.end method


# virtual methods
.method b(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->e:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->f:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->g:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->a(Landroid/os/Parcel;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;)V

    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->h:Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;->a(Landroid/os/Parcel;Ldev/duo/taskcore/WorkspaceProtocol$TaskRef;)V

    .line 3
    iget-boolean v0, p0, Ldev/duo/taskcore/WorkspaceProtocol$SourceEvent;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
