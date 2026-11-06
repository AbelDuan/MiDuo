.class public final Ldev/duo/taskcore/TaskBinding$Snapshot;
.super Ljava/lang/Object;
.source "TaskBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/TaskBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Snapshot"
.end annotation


# instance fields
.field public final bounds:Landroid/graphics/Rect;

.field public final focusable:Z

.field public final hidden:Z

.field public final interceptBack:Z

.field public final trimmable:Z

.field public final windowingMode:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;ZZZZ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->windowingMode:I

    iput-object p2, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    iput-boolean p3, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->trimmable:Z

    .line 46
    iput-boolean p4, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->focusable:Z

    iput-boolean p5, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->hidden:Z

    iput-boolean p6, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->interceptBack:Z

    .line 47
    return-void
.end method

.method public static read(Landroid/os/Parcel;)Ldev/duo/taskcore/TaskBinding$Snapshot;
    .locals 8

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    invoke-static {p0}, Ldev/duo/taskcore/WorkspaceProtocol;->readRect(Landroid/os/Parcel;)Landroid/graphics/Rect;

    move-result-object v2

    .line 58
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 59
    new-instance v0, Ldev/duo/taskcore/TaskBinding$Snapshot;

    and-int/lit8 v3, p0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, p0, 0x2

    if-eqz v6, :cond_1

    move v6, v4

    move v4, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    and-int/lit8 v7, p0, 0x4

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v5

    move v5, v6

    :goto_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_3

    move v6, v7

    :cond_3
    invoke-direct/range {v0 .. v6}, Ldev/duo/taskcore/TaskBinding$Snapshot;-><init>(ILandroid/graphics/Rect;ZZZZ)V

    return-object v0
.end method


# virtual methods
.method public write(Landroid/os/Parcel;)V
    .locals 3

    .line 50
    iget v0, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->windowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-object v0, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->bounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Ldev/duo/taskcore/WorkspaceProtocol;->writeRect(Landroid/os/Parcel;Landroid/graphics/Rect;)V

    .line 52
    iget-boolean v0, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->trimmable:Z

    iget-boolean v1, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->focusable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    iget-boolean v1, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->hidden:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iget-boolean v1, p0, Ldev/duo/taskcore/TaskBinding$Snapshot;->interceptBack:Z

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    :cond_2
    or-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
