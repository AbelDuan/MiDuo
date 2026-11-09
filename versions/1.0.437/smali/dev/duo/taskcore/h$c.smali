.class public final Ldev/duo/taskcore/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/os/IBinder;

.field public final f:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(IIIILandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldev/duo/taskcore/h$c;->a:I

    iput p2, p0, Ldev/duo/taskcore/h$c;->b:I

    iput p3, p0, Ldev/duo/taskcore/h$c;->c:I

    iput p4, p0, Ldev/duo/taskcore/h$c;->d:I

    .line 3
    iput-object p5, p0, Ldev/duo/taskcore/h$c;->e:Landroid/os/IBinder;

    iput-object p6, p0, Ldev/duo/taskcore/h$c;->f:Landroid/os/IBinder;

    return-void
.end method

.method static a(Landroid/os/Parcel;)Ldev/duo/taskcore/h$c;
    .locals 7

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ldev/duo/taskcore/h$c;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 6
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/h$c;-><init>(IIIILandroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v0
.end method

.method static a(Landroid/os/Parcel;Ldev/duo/taskcore/h$c;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p1, Ldev/duo/taskcore/h$c;->a:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/h$c;->b:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/h$c;->c:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p1, Ldev/duo/taskcore/h$c;->d:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p1, Ldev/duo/taskcore/h$c;->e:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p1, p1, Ldev/duo/taskcore/h$c;->f:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
