.class public final synthetic Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/WorkspaceHost;

.field public final synthetic f$1:Ldev/duo/taskcore/Geometry;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Geometry;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iput-object p2, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$1:Ldev/duo/taskcore/Geometry;

    iput-boolean p3, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$0:Ldev/duo/taskcore/WorkspaceHost;

    iget-object v1, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$1:Ldev/duo/taskcore/Geometry;

    iget-boolean v2, p0, Ldev/duo/taskcore/g$$ExternalSyntheticLambda11;->f$2:Z

    invoke-static {v0, v1, v2}, Ldev/duo/taskcore/WorkspaceHost;->$r8$lambda$pTbKq1niF1XAAuzB2NM2QGPDlz0(Ldev/duo/taskcore/WorkspaceHost;Ldev/duo/taskcore/Geometry;Z)V

    return-void
.end method
