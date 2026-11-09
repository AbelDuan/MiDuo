.class public final synthetic Ldev/duo/hookprobe/f$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/duo/hookprobe/f;

.field public final synthetic f$1:Ldev/duo/hookprobe/o;


# direct methods
.method public synthetic constructor <init>(Ldev/duo/hookprobe/f;Ldev/duo/hookprobe/o;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda20;->f$0:Ldev/duo/hookprobe/f;

    iput-object p2, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda20;->f$1:Ldev/duo/hookprobe/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda20;->f$0:Ldev/duo/hookprobe/f;

    iget-object v1, p0, Ldev/duo/hookprobe/f$$ExternalSyntheticLambda20;->f$1:Ldev/duo/hookprobe/o;

    invoke-static {v0, v1}, Ldev/duo/hookprobe/f;->$r8$lambda$QS06rYfXb-kSswVfL4cFT9UfF_A(Ldev/duo/hookprobe/f;Ldev/duo/hookprobe/o;)V

    return-void
.end method
