.class final Ldev/duo/workspaceprobe/WorkspaceHome$a;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/workspaceprobe/WorkspaceHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:Landroid/os/ResultReceiver;

.field e:Z


# direct methods
.method constructor <init>(IJJLandroid/os/ResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    iput p1, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->a:I

    .line 3
    iput-wide p2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->b:J

    .line 4
    iput-wide p4, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->c:J

    .line 5
    iput-object p6, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->d:Landroid/os/ResultReceiver;

    .line 6
    const-string p1, "dev.duo.workspaceprobe.IWorkbenchFrameReceipt"

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget-boolean v1, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    iput-boolean v0, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->e:Z

    :cond_2
    if-nez p1, :cond_3

    .line 6
    const-string v0, "waiting engine"

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    const-string v0, "registered"

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 7
    const-string v0, "texture layer added"

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    const-string v0, "raster acquired buffer"

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 8
    const-string v0, "producer released"

    goto :goto_1

    :cond_7
    const-string v0, "native frame error"

    .line 9
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame epoch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " texture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DuoWorkbenchHome"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 12
    iget-wide v2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->b:J

    const-string v4, "epoch"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13
    iget-wide v2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->c:J

    const-string v4, "frame"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    const-string v2, "textureId"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 15
    const-string p2, "reason"

    invoke-virtual {v1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->d:Landroid/os/ResultReceiver;

    invoke-virtual {p2, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 0
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iget p3, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->a:I

    if-ne p1, p3, :cond_2

    .line 3
    const-string p1, "dev.duo.workspaceprobe.IWorkbenchFrameReceipt"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 9
    iget-wide v5, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->b:J

    cmp-long p2, p3, v5

    if-nez p2, :cond_1

    iget-wide p2, p0, Ldev/duo/workspaceprobe/WorkspaceHome$a;->c:J

    cmp-long p2, v1, p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1, v3, v4}, Ldev/duo/workspaceprobe/WorkspaceHome$a;->a(IJ)V

    :cond_1
    return v0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "workbench receipt uid"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
