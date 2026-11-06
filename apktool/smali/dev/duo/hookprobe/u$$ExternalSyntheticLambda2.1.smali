.class public final synthetic Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/u;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/u;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;->f$0:Ldev/duo/hookprobe/u;

    iput-object p2, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;->f$0:Ldev/duo/hookprobe/u;

    iget-object v1, p0, Ldev/duo/hookprobe/u$$ExternalSyntheticLambda2;->f$1:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Ldev/duo/hookprobe/u;->$r8$lambda$FQfL7HZqxVI9bTkO0w61d-8Q92c(Ldev/duo/hookprobe/u;Landroid/os/Handler;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
