.class final Ldev/duo/taskcore/Frames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/duo/taskcore/Frames$Scheduler;,
        Ldev/duo/taskcore/Frames$Driver;
    }
.end annotation


# instance fields
.field private final a:Ldev/duo/taskcore/Frames$Scheduler;

.field private b:Ldev/duo/taskcore/Frames$Driver;


# direct methods
.method constructor <init>(Ldev/duo/taskcore/Frames$Scheduler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/taskcore/Frames;->a:Ldev/duo/taskcore/Frames$Scheduler;

    return-void
.end method

.method static a(ZZI)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method a(Ldev/duo/taskcore/Frames$Driver;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    .line 2
    :cond_0
    invoke-virtual {p1}, Ldev/duo/taskcore/Frames$Driver;->a()V

    return-void
.end method

.method c(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ldev/duo/taskcore/Frames;->a:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/Frames$Scheduler;->a(Ldev/duo/taskcore/Frames$Driver;)V

    :cond_0
    return-void
.end method

.method d(Ldev/duo/taskcore/Frames$Driver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    .line 2
    iput-object p1, p0, Ldev/duo/taskcore/Frames;->b:Ldev/duo/taskcore/Frames$Driver;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ldev/duo/taskcore/Frames;->a:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v1, v0}, Ldev/duo/taskcore/Frames$Scheduler;->b(Ldev/duo/taskcore/Frames$Driver;)V

    invoke-virtual {v0}, Ldev/duo/taskcore/Frames$Driver;->a()V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Ldev/duo/taskcore/Frames;->a:Ldev/duo/taskcore/Frames$Scheduler;

    invoke-interface {v0, p1}, Ldev/duo/taskcore/Frames$Scheduler;->a(Ldev/duo/taskcore/Frames$Driver;)V

    :cond_1
    return-void
.end method
