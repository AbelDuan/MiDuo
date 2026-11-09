.class public final synthetic Ldev/duo/taskcore/g$b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Ldev/duo/taskcore/Frames$Driver;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/g$b$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/Frames$Driver;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/taskcore/g$b$$ExternalSyntheticLambda0;->f$0:Ldev/duo/taskcore/Frames$Driver;

    invoke-virtual {v0, p1, p2}, Ldev/duo/taskcore/Frames$Driver;->a(J)V

    return-void
.end method
