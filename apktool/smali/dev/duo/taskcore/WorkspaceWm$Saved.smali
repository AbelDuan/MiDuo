.class final Ldev/duo/taskcore/WorkspaceWm$Saved;
.super Ljava/lang/Object;
.source "WorkspaceWm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceWm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Saved"
.end annotation


# instance fields
.field final displayId:I

.field final parent:Ljava/lang/Object;

.field final snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

.field final task:Ljava/lang/Object;

.field final taskId:I

.field final token:Landroid/os/IBinder;

.field final userId:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ldev/duo/taskcore/TaskBinding$Snapshot;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->taskId:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->userId:I

    iput p3, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->displayId:I

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->task:Ljava/lang/Object;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->parent:Ljava/lang/Object;

    .line 83
    iput-object p6, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->token:Landroid/os/IBinder;

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->snapshot:Ldev/duo/taskcore/TaskBinding$Snapshot;

    .line 84
    return-void
.end method
