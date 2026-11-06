.class public final synthetic Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/n;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/n;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;->f$0:Ldev/duo/workspaceprobe/n;

    iput-object p2, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;->f$0:Ldev/duo/workspaceprobe/n;

    iget-object v1, p0, Ldev/duo/workspaceprobe/n$$ExternalSyntheticLambda18;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Ldev/duo/workspaceprobe/i;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/n;->$r8$lambda$WjuaaC6lze1E5SKSVcyFRcHdd5M(Ldev/duo/workspaceprobe/n;Ljava/util/function/Consumer;Ldev/duo/workspaceprobe/i;)V

    return-void
.end method
