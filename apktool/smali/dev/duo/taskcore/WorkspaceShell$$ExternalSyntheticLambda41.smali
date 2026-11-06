.class public final synthetic Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;->f$0:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;->f$0:Ldev/duo/taskcore/WorkspaceShell$GroupMotion;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceShell$$ExternalSyntheticLambda41;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, p3}, Ldev/duo/taskcore/WorkspaceShell;->lambda$installGroupMotion$24(Ldev/duo/taskcore/WorkspaceShell$GroupMotion;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
