.class public final synthetic Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ldev/duo/workspaceprobe/b;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Landroid/view/Choreographer$FrameCallback;

.field public final synthetic f$3:[Z

.field public final synthetic f$4:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$0:Ldev/duo/workspaceprobe/b;

    iput-object p2, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$1:[Z

    iput-object p3, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$2:Landroid/view/Choreographer$FrameCallback;

    iput-object p4, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$3:[Z

    iput-object p5, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$4:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$0:Ldev/duo/workspaceprobe/b;

    iget-object v1, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$1:[Z

    iget-object v2, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$2:Landroid/view/Choreographer$FrameCallback;

    iget-object v3, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$3:[Z

    iget-object v4, p0, Ldev/duo/hookprobe/t$$ExternalSyntheticLambda2;->f$4:Landroid/view/Choreographer$FrameCallback;

    move-object v5, p1

    check-cast v5, [J

    invoke-static/range {v0 .. v5}, Ldev/duo/hookprobe/t;->$r8$lambda$8j20ODmucoH0Pbb4OuqmqriYERc(Ldev/duo/workspaceprobe/b;[ZLandroid/view/Choreographer$FrameCallback;[ZLandroid/view/Choreographer$FrameCallback;[J)V

    return-void
.end method
