.class public final synthetic Ldev/duo/hookprobe/t$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda1;->f$0:Ldev/duo/workspaceprobe/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda1;->f$0:Ldev/duo/workspaceprobe/b;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Ldev/duo/hookprobe/t;->$r8$lambda$frQJ56RN79nlV3zRWR72-g0tlDg(Ldev/duo/workspaceprobe/b;Landroid/view/View;)V

    return-void
.end method
