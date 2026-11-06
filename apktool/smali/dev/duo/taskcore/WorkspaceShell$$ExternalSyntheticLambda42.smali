.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Landroid/graphics/Rect;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda42;->f$1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ldev/duo/taskcore/WorkspaceShell;->lambda$prepare$36$dev-duo-taskcore-WorkspaceShell(Landroid/graphics/Rect;)V

    return-void
.end method
