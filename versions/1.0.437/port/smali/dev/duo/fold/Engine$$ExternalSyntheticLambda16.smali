.class public final synthetic Ldev/duo/fold/Engine$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldev/duo/fold/Engine$$ExternalSyntheticLambda16;->f$0:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Ldev/duo/fold/Engine$$ExternalSyntheticLambda16;->f$0:I

    invoke-static {v0}, Ldev/duo/fold/Engine;->$r8$lambda$vqXL7Nx03uwihNKxMK5hHYJltoY(I)Ldev/duo/fold/i$a;

    move-result-object v0

    return-object v0
.end method
