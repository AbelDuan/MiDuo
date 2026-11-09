.class public final synthetic Ldev/duo/hookprobe/s$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/s;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/s;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/s;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/s$$ExternalSyntheticLambda5;->f$0:Ldev/duo/hookprobe/s;

    invoke-static {v0, p1}, Ldev/duo/hookprobe/s;->$r8$lambda$DQHlEjaEArpg5tnVLP4YvGge8lQ(Ldev/duo/hookprobe/s;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
