.class public final synthetic Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic f$1:Ldev/duo/workspaceprobe/b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;->f$1:Ldev/duo/workspaceprobe/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Ldev/duo/hookprobe/t$b$$ExternalSyntheticLambda1;->f$1:Ldev/duo/workspaceprobe/b;

    invoke-static {v0, v1}, Ldev/duo/hookprobe/t$b;->$r8$lambda$Bs_0dbnePL-Ita3Iz3AA66PAh84(Ljava/util/concurrent/CompletableFuture;Ldev/duo/workspaceprobe/b;)V

    return-void
.end method
