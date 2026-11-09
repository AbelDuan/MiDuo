.class public final synthetic Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/o;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/o;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda28;->f$0:Ldev/duo/workspaceprobe/o;

    iput p2, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda28;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda28;->f$0:Ldev/duo/workspaceprobe/o;

    iget v1, p0, Ldev/duo/workspaceprobe/o$$ExternalSyntheticLambda28;->f$1:I

    check-cast p1, Ldev/duo/taskcore/i;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/o;->$r8$lambda$vz9e5hrr2-pGzk1bqzt1nYSMoGc(Ldev/duo/workspaceprobe/o;ILdev/duo/taskcore/i;)V

    return-void
.end method
