.class final Ldev/duo/taskcore/Frames;
.super Ljava/lang/Object;
.source "Frames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/Frames$Scheduler;,
        Ldev/duo/taskcore/Frames$Driver;
    }
.end annotation


# instance fields
.field private running:Ldev/duo/taskcore/Frames$Driver;

.field private final scheduler:Ldev/duo/taskcore/Frames$Scheduler;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/Frames$Scheduler;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/Frames;->scheduler:Ldev/duo/taskcore/Frames$Scheduler;

    return-void
.end method

.method static acceptsGesture(ZZI)Z
    .locals 0

    .line 53
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method current(Ldev/duo/taskcore/Frames$Driver;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method done(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 47
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    .line 48
    :cond_0
    invoke-virtual {p1}, Ldev/duo/taskcore/Frames$Driver;->finish()V

    .line 49
    return-void
.end method

.method next(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 43
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/Frames;->scheduler:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/Frames$Scheduler;->post(Ldev/duo/taskcore/Frames$Driver;)V

    :cond_0
    return-void
.end method

.method run(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 2

    .line 34
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    .line 35
    iput-object p1, p0, Ldev/duo/taskcore/Frames;->running:Ldev/duo/taskcore/Frames$Driver;

    .line 36
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldev/duo/taskcore/Frames;->scheduler:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v1, v0}, Ldev/duo/taskcore/Frames$Scheduler;->remove(Ldev/duo/taskcore/Frames$Driver;)V

    invoke-virtual {v0}, Ldev/duo/taskcore/Frames$Driver;->finish()V

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Ldev/duo/taskcore/Frames;->scheduler:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/Frames$Scheduler;->post(Ldev/duo/taskcore/Frames$Driver;)V

    .line 38
    :cond_1
    return-void
.end method
