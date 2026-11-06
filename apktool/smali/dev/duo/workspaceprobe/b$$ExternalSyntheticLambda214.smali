.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda214;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:Ldev/duo/workspaceprobe/b$K;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$K;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda214;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda214;->f$1:Ldev/duo/workspaceprobe/b$K;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda214;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda214;->f$1:Ldev/duo/workspaceprobe/b$K;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$nBRxUkpFxFjWaJ6XKcWooN9H_Sg(Ldev/duo/workspaceprobe/b;Ldev/duo/workspaceprobe/b$K;Landroid/view/View;)V

    return-void
.end method
