.class public final synthetic Ldev/duo/hookprobe/G$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/github/libxposed/api/XposedInterface$Hooker;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/G;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/G;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda16;->f$0:Ldev/duo/hookprobe/G;

    return-void
.end method


# virtual methods
.method public final intercept(Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/G$$ExternalSyntheticLambda16;->f$0:Ldev/duo/hookprobe/G;

    invoke-static {v0, p1}, Ldev/duo/hookprobe/G;->$r8$lambda$NroPiH6h0ArJrurWBnIUv7ca9Gc(Ldev/duo/hookprobe/G;Lio/github/libxposed/api/XposedInterface$Chain;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
