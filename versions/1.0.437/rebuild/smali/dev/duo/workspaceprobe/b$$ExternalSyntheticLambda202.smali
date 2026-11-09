.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;IZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$0:Ldev/duo/workspaceprobe/b;

    iput p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$1:I

    iput-boolean p3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$2:Z

    iput-boolean p4, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$0:Ldev/duo/workspaceprobe/b;

    iget v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$1:I

    iget-boolean v2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$2:Z

    iget-boolean v3, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda202;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Ldev/duo/workspaceprobe/b;->$r8$lambda$ry_eZWnkODSDG84jjEO7v-nH9VQ(Ldev/duo/workspaceprobe/b;IZZ)V

    return-void
.end method
