.class Ldev/duo/hookprobe/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/duo/hookprobe/t;->e(Ldev/duo/workspaceprobe/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z


# direct methods
.method constructor <init>([Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ldev/duo/hookprobe/t$d;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1
    invoke-static {}, Ldev/duo/hookprobe/t;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    invoke-virtual {p1}, Ldev/duo/hookprobe/w;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/duo/hookprobe/t$d;->a:[Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    iget p1, p1, Ldev/duo/hookprobe/w;->i:I

    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p2

    iget-wide v0, p2, Ldev/duo/hookprobe/w;->h:J

    const/16 p2, 0x8

    invoke-static {p2, p1, v0, v1}, Ldev/duo/hookprobe/t;->a(IIJ)V

    .line 3
    :cond_1
    invoke-static {}, Ldev/duo/hookprobe/t;->g()Ldev/duo/hookprobe/w;

    move-result-object p1

    invoke-virtual {p1}, Ldev/duo/hookprobe/w;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
