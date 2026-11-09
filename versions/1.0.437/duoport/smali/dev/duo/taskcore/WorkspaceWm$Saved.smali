.class final Ldev/duo/taskcore/WorkspaceWm$Saved;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/duo/taskcore/WorkspaceWm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Saved"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Ljava/lang/Object;

.field final e:Ljava/lang/Object;

.field final f:Landroid/os/IBinder;

.field final g:Ldev/duo/taskcore/TaskBinding$Snapshot;


# direct methods
.method constructor <init>(IIILjava/lang/Object;Ljava/lang/Object;Landroid/os/IBinder;Ldev/duo/taskcore/TaskBinding$Snapshot;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->a:I

    iput p2, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->b:I

    iput p3, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->c:I

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->d:Ljava/lang/Object;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->e:Ljava/lang/Object;

    .line 3
    iput-object p6, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->f:Landroid/os/IBinder;

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceWm$Saved;->g:Ldev/duo/taskcore/TaskBinding$Snapshot;

    return-void
.end method
