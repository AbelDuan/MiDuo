.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell;

.field public final synthetic f$1:Ljava/lang/Class;

.field public final synthetic f$2:Ljava/lang/Class;

.field public final synthetic f$3:Ljava/lang/Class;

.field public final synthetic f$4:[Ljava/lang/reflect/Field;

.field public final synthetic f$5:Ljava/lang/reflect/Field;

.field public final synthetic f$6:Ljava/lang/reflect/Field;

.field public final synthetic f$7:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Class;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Class;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$3:Ljava/lang/Class;

    iput-object p5, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$4:[Ljava/lang/reflect/Field;

    iput-object p6, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$5:Ljava/lang/reflect/Field;

    iput-object p7, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$6:Ljava/lang/reflect/Field;

    iput-object p8, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$7:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$0:Ldev/duo/taskcore/WorkspaceShell;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$1:Ljava/lang/Class;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$2:Ljava/lang/Class;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$3:Ljava/lang/Class;

    iget-object v4, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$4:[Ljava/lang/reflect/Field;

    iget-object v5, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$5:Ljava/lang/reflect/Field;

    iget-object v6, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$6:Ljava/lang/reflect/Field;

    iget-object v7, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda17;->f$7:Ljava/lang/reflect/Field;

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Ldev/duo/taskcore/WorkspaceShell;->lambda$installGroupMotion$26$dev-duo-taskcore-WorkspaceShell(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
