.class public final Ldev/duo/workspaceprobe/WorkspaceHome;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/workspaceprobe/WorkspaceHome$a;
    }
.end annotation


# static fields
.field private static final LAUNCHER:Ljava/lang/String; = "com.android.systemui.shared.recents.ILauncherProxy"

.field private static final RECEIPT:Ljava/lang/String; = "dev.duo.workspaceprobe.IWorkbenchFrameReceipt"

.field private static final TRANSACTION_FRAME:I = 0x440231

.field private static loaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/os/IBinder;JJ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 3
    const/4 v2, 0x2

    move-wide v3, p1

    move-wide v5, p3

    :try_start_0
    invoke-static/range {v1 .. v6}, Ldev/duo/workspaceprobe/WorkspaceHome;->writeHeader(Landroid/os/Parcel;IJJ)V

    .line 4
    const p1, 0x440231

    const/4 p2, 0x0

    invoke-interface {p0, p1, v1, v7, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 7
    invoke-virtual {v7}, Landroid/os/Parcel;->readLong()J

    .line 8
    const-string p1, "DuoWorkbenchHome"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clear epoch="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " frame="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " code="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 13
    :cond_0
    :try_start_1
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Home workbench Binder clear unavailable"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 19
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 20
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 21
    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "launcherProxy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized load()V
    .locals 2

    const-class v0, Ldev/duo/workspaceprobe/WorkspaceHome;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Ldev/duo/workspaceprobe/WorkspaceHome;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    :try_start_1
    const-string v1, "duoworkspace"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3
    const/4 v1, 0x1

    sput-boolean v1, Ldev/duo/workspaceprobe/WorkspaceHome;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static native nativeWriteBuffer(Landroid/os/Parcel;Landroid/hardware/HardwareBuffer;)I
.end method

.method public static preload()V
    .locals 0

    .line 1
    invoke-static {}, Ldev/duo/workspaceprobe/WorkspaceHome;->load()V

    return-void
.end method

.method public static publish(Landroid/content/Context;Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;IIILandroid/os/ResultReceiver;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    if-eqz p12, :cond_3

    if-eqz v0, :cond_3

    .line 1
    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    array-length v2, v0

    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.miui.home"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget v5, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-static {}, Ldev/duo/workspaceprobe/WorkspaceHome;->load()V

    .line 10
    new-instance v4, Ldev/duo/workspaceprobe/WorkspaceHome$a;

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p12

    invoke-direct/range {v4 .. v10}, Ldev/duo/workspaceprobe/WorkspaceHome$a;-><init>(IJJLandroid/os/ResultReceiver;)V

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    .line 13
    const/4 v7, 0x1

    move-wide v8, p2

    move-wide/from16 v10, p4

    :try_start_1
    invoke-static/range {v6 .. v11}, Ldev/duo/workspaceprobe/WorkspaceHome;->writeHeader(Landroid/os/Parcel;IJJ)V

    .line 14
    array-length v2, v0

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    array-length v2, v0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    aget v7, v0, v5

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 16
    :cond_0
    move/from16 v0, p7

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    move/from16 v0, p9

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    move/from16 v0, p10

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    move/from16 v0, p11

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 21
    invoke-static {v6, v1}, Ldev/duo/workspaceprobe/WorkspaceHome;->nativeWriteBuffer(Landroid/os/Parcel;Landroid/hardware/HardwareBuffer;)I

    move-result v0

    if-nez v0, :cond_2

    .line 23
    const v0, 0x440231

    invoke-interface {p1, v0, v6, p0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 27
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {v4, p1, v0, v1}, Ldev/duo/workspaceprobe/WorkspaceHome$a;->a(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 31
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return p1

    .line 32
    :cond_1
    :try_start_2
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Home workbench Binder transaction unavailable"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AHB Parcel write status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 41
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 42
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 43
    throw p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Home uid unavailable"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 45
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "workbench frame"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeHeader(Landroid/os/Parcel;IJJ)V
    .locals 1

    .line 1
    const-string v0, "com.android.systemui.shared.recents.ILauncherProxy"

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    invoke-virtual {p0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
