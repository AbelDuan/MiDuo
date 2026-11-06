.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(JILjava/lang/Object;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$0:J

    iput p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$1:I

    iput-object p4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-boolean p5, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-wide v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$0:J

    iget v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$1:I

    iget-object v3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iget-boolean v4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda1;->f$3:Z

    move-object v5, p1

    check-cast v5, Ldev/duo/taskcore/WorkspaceSession;

    invoke-static/range {v0 .. v5}, Ldev/duo/workspaceprobe/n;->$r8$lambda$-2ryn2fr9ZfwT3wNN6qKDu3M7vc(JILjava/lang/Object;ZLdev/duo/taskcore/WorkspaceSession;)V

    return-void
.end method
