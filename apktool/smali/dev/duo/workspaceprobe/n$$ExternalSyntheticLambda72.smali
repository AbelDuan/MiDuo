.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Ldev/duo/taskcore/WorkspaceSession;

.field public final synthetic f$2:Ldev/duo/taskcore/WorkspaceSession$State;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:[Ldev/duo/taskcore/TaskBinding;

.field public final synthetic f$6:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$1:Ldev/duo/taskcore/WorkspaceSession;

    iput-object p3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$2:Ldev/duo/taskcore/WorkspaceSession$State;

    iput-boolean p4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$3:Z

    iput-object p5, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$4:Ljava/lang/String;

    iput-object p6, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$5:[Ldev/duo/taskcore/TaskBinding;

    iput-object p7, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$6:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$1:Ldev/duo/taskcore/WorkspaceSession;

    iget-object v2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$2:Ldev/duo/taskcore/WorkspaceSession$State;

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$3:Z

    iget-object v4, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$4:Ljava/lang/String;

    iget-object v5, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$5:[Ldev/duo/taskcore/TaskBinding;

    iget-object v6, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda72;->f$6:[Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Ldev/duo/workspaceprobe/n;->$r8$lambda$6-Bgy2BeII72D1Ozpd5O2lHuoVs(Ldev/duo/workspaceprobe/n;Ldev/duo/taskcore/WorkspaceSession;Ldev/duo/taskcore/WorkspaceSession$State;ZLjava/lang/String;[Ldev/duo/taskcore/TaskBinding;[Ljava/lang/String;)V

    return-void
.end method
