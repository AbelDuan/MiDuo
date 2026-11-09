.class public final synthetic Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda126;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda126;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda126;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda126;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Ldev/duo/workspaceprobe/b$$ExternalSyntheticLambda126;->f$1:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ldev/duo/workspaceprobe/b;->$r8$lambda$XXMPv2_zD2gDxfhU5Z2MnUg9w4s(Ljava/util/function/Consumer;Ljava/lang/Integer;)V

    return-void
.end method
