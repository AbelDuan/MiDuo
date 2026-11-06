.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:[I

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/hardware/HardwareBuffer;

.field public final synthetic f$7:Landroid/graphics/ColorSpace;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$1:Landroid/os/IBinder;

    iput-wide p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$2:J

    iput-wide p5, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$3:J

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$4:[I

    iput p8, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$5:I

    iput-object p9, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$6:Landroid/hardware/HardwareBuffer;

    iput-object p10, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$7:Landroid/graphics/ColorSpace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$1:Landroid/os/IBinder;

    iget-wide v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$2:J

    iget-wide v4, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$3:J

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$4:[I

    iget v7, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$5:I

    iget-object v8, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$6:Landroid/hardware/HardwareBuffer;

    iget-object v9, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda35;->f$7:Landroid/graphics/ColorSpace;

    invoke-virtual/range {v0 .. v9}, Ldev/duo/taskcore/WorkspaceShell;->lambda$publishGroupFrame$51$dev-duo-taskcore-WorkspaceShell(Landroid/os/IBinder;JJ[IILandroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    return-void
.end method
