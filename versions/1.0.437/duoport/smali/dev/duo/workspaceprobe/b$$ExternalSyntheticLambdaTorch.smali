.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambdaTorch;
.super Ljava/lang/Object;
.source "TorchReposition.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambdaTorch;->f$0:Ldev/duo/workspaceprobe/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambdaTorch;->f$0:Ldev/duo/workspaceprobe/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Ldev/duo/workspaceprobe/b;->moveTorchAboveCamera()V

    return-void
.end method
