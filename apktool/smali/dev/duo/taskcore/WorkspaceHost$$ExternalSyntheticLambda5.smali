.class public final synthetic Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Ljava/lang/Runnable;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iput-object p3, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$2:Ljava/util/Map;

    iput-object p4, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    iput-boolean p5, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v1, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$1:Ljava/util/Map;

    iget-object v2, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$2:Ljava/util/Map;

    iget-object v3, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Runnable;

    iget-boolean v4, p0, Ldev/duo/taskcore/WorkspaceHost$$ExternalSyntheticLambda5;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Ldev/duo/taskcore/WorkspaceHost;->lambda$place$3$dev-duo-taskcore-WorkspaceHost(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Runnable;Z)V

    return-void
.end method
